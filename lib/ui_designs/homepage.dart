import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:object_detection_app/ui_designs/about_us.dart';
import 'package:object_detection_app/ui_designs/categories.dart';
import 'package:object_detection_app/ui_designs/help.dart';
import 'package:object_detection_app/ui_designs/laod_page.dart';
import 'package:object_detection_app/ui_designs/trending.dart';
import 'package:object_detection_app/util/categories.dart';
import 'package:object_detection_app/util/classes.dart';
import 'package:object_detection_app/util/canes.dart';
import 'package:object_detection_app/widgets/category_item.dart';
import 'package:object_detection_app/widgets/slide_item.dart';

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
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 206, 168, 148),
              ),
              child: Text(
                'Object Recognition',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode_rounded),
              title: const Text('Dark Mode'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: const Icon(Icons.people_outline_rounded),
                title: const Text('About Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutUsPage()),
                  );
                }),
            ListTile(
              leading: const Icon(Icons.help_center_rounded),
              title: const Text('Help?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Help()),
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
          child: Container(
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
          ),
        ),
      ),
      // body: Center(
      //   child: Column(children: [
      //     Expanded(
      //       child: SizedBox(
      //         height: 200.0,
      //         child: Carousel(
      //           boxFit: BoxFit.fill,
      //           autoplay: false,
      //           dotColor: Colors.yellow,
      //           dotPosition: DotPosition.bottomCenter,
      //           dotSize: 5.0,
      //           dotSpacing: 20.0,
      //           images: const [
      //             AssetImage('assets/images/images.jpg'),
      //             AssetImage('assets/images/download.jpg'),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: const EdgeInsets.only(top: 60, right: 20, left: 20),
      //       child: const Text("Welcome",
      //           textAlign: TextAlign.center,
      //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      //     ),
      //     Container(
      //       margin: const EdgeInsets.only(top: 45, right: 30, left: 30),
      //       child: const Text(
      //           "To a system for easy recognition of Bhutanese traditional items made from Wood and Cane",
      //           textAlign: TextAlign.center,
      //           style: TextStyle(fontSize: 15)),
      //     ),
      //     Container(
      //       margin: const EdgeInsets.only(
      //           top: 35, right: 30, left: 30, bottom: 200),
      //       child: const Text(
      //           "Providing platform for gaining adequate knowledge on Bhutanese traditional items.",
      //           textAlign: TextAlign.center,
      //           style: TextStyle(fontSize: 15)),
      //     ),
      //   ]),
      // ),
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
        onTap: (int index) {
          if (index == 0) {
            _onItemTapped(index);
          } else if (index == 1) {
            getFromGallery(context);
          }
        },
      ),
    );
  }

  Future getFromGallery(BuildContext context) async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop();
    if (pickedFile == null) {
      return;
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => LoadingPage(image: pickedFile)));
    }
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
            "See all (9)",
            style: TextStyle(
              color: Theme.of(context).accentColor,
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
            "See all (9)",
            style: TextStyle(
              color: Theme.of(context).accentColor,
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
        itemCount: categories == null ? 0 : categories.length,
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
        itemCount: classes == null ? 0 : classes.length,
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
        itemCount: canes == null ? 0 : canes.length,
        itemBuilder: (BuildContext context, int index) {
          Map cat = canes[index];

          return CategoryItem(
            cat: cat,
          );
        },
      ),
    );
  }
}

void setState(Null Function() param0) {}
