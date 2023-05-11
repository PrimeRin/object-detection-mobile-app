import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:object_detection_app/ui_designs/about_us.dart';
import 'package:object_detection_app/ui_designs/categories.dart';
import 'package:object_detection_app/ui_designs/help.dart';
import 'package:object_detection_app/ui_designs/trending.dart';
import 'package:object_detection_app/util/categories.dart';
import 'package:object_detection_app/util/classes.dart';
import 'package:object_detection_app/util/canes.dart';
import 'package:object_detection_app/widgets/category_item.dart';
import 'package:object_detection_app/widgets/slide_item.dart';

import 'dart:io';
import 'dart:async';
import 'package:flutter_pytorch/pigeon.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pytorch/flutter_pytorch.dart';
import 'package:object_detection_app/RunModelByCameraDemo.dart';
import 'itempage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get background => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.white,
          toolbarTextStyle: TextStyle(fontSize: 20),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<String> classObjects = <String>[];

  late ModelObjectDetection _objectModel;
  File? _image;
  ImagePicker _picker = ImagePicker();
  bool objectDetection = false;
  List<ResultObjectDetection?> objDetect = [];
  @override
  void initState() {
    super.initState();
    loadModel();
  }

  //load your model
  Future loadModel() async {
    String pathObjectDetectionModel = "assets/models/prime.torchscript";
    try {
      _objectModel = await FlutterPytorch.loadObjectDetectionModel(
          pathObjectDetectionModel, 20, 640, 640,
          labelPath: "assets/labels/prime.txt");
    } catch (e) {
      if (e is PlatformException) {
        print("only supported for android, Error is $e");
      } else {
        print("Error is $e");
      }
    }
  }

  Future runObjectDetection() async {
    int len = classObjects.length;

    for (var i = 0; i < len; i++) {
      classObjects.removeAt(0);
    }
    //pick a random image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    objDetect = await _objectModel.getImagePrediction(
        await File(image!.path).readAsBytes(),
        minimumScore: 0.1,
        IOUThershold: 0.3);

    objDetect.forEach((element) {
      String? name = element?.className;
      if (name != null) {
        if (!classObjects.contains(name.toString().trim())) {
          classObjects.add(name.toString().trim());
        }
      }
    });
    print(classObjects);
    setState(() {
      _image = File(image.path);
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        runObjectDetection();
      } else if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RunModelByCameraDemo()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async {
        // Show a dialog box when the user presses the back button
        final shouldExit = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit the app?'),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('No'),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () => exit(0),
                    child: Text('Yes'),
                  ),
                ],
              ),
            ],
          ),
        );

        // If the user clicked the Yes button, exit the app
        return shouldExit ?? false;
      },
      child: Scaffold(
      appBar: AppBar(
        title: const Text('Visual Sense'),
        elevation: 6.0,
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode_rounded),
              title: const Text(
                'Dark Mode',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.people_outline_rounded),
              title: const Text(
                'About Us',
                style: const TextStyle(
                  fontSize: 16.0,
                ),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Help()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_center_rounded),
              title: const Text(
                'Help?',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
                ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: _selectedIndex == 0
              ? Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                  child: ListView(
                    children: <Widget>[
                      buildPopularRow('Popular Items', context),
                      const SizedBox(height: 10.0),
                      buildPopularList(context),
                      const SizedBox(height: 10.0),
                      buildWoodRow('Wood Items', context),
                      const SizedBox(height: 10.0),
                      buildWoodList(context),
                      const SizedBox(height: 20.0),
                      buildWoodRow('Cane Items', context),
                      const SizedBox(height: 10.0),
                      buildCanesList(context),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                )
              : _selectedIndex == 1
                  ? buildPrediction(context)
                  : null,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Real Time',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        //onTap: _onItemTapped,
        onTap: _onItemTapped,
      ),
    ),
    );
  }

  buildPopularRow(String restaurant, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$restaurant",
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          child: Text(
            "See all (10)",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Trending();
                },
              ),
            );
          },
        ),
      ],
    );
  }

  buildWoodRow(String category, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$category",
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          child: Text(
            "See all (10)",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Categories();
                },
              ),
            );
          },
        ),
      ],
    );
  }

  buildWoodList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          Map cat = categories[index];
          return CategoryItem(
            cat: cat,
          );
        },
      ),
    );
  }

  buildPopularList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: classes.length,
        itemBuilder: (BuildContext context, int index) {
          Map cla = classes[index];
          return Container(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: cla["img"],
              title: cla["title"],
              address: cla["address"],
            ),
          );
        },
      ),
    );
  }

  buildCanesList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: canes.length,
        itemBuilder: (BuildContext context, int index) {
          Map cat = canes[index];

          return CategoryItem(
            cat: cat,
          );
        },
      ),
    );
  }

  buildPrediction(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Result of Prediction',
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.46,
            child: Expanded(
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(50), // Set border radius here
                ),
                child: Container(
                  child: objDetect.isNotEmpty
                      ? _image == null
                          ? CircularProgressIndicator()
                          : _objectModel.renderBoxesOnImage(_image!, objDetect)
                      : _image == null
                          ? CircularProgressIndicator()
                          : Image.file(_image!),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Text(
                  "Objects Found:",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: classObjects.length,
            itemBuilder: (context, index) {
              return ListTile(
                //Text('${classObjects[index].title}: "${classObjects[index].description}"'),
                title: Text('${index + 1}.' '${classObjects[index]}'),
                trailing: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Do something when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemPage(
                          name: classObjects[index],
                        ),
                      ),
                    );
                  },
                  child: Text('View Detail'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
