// import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:object_detection_app/ui_designs/about_us.dart';
import 'package:object_detection_app/ui_designs/help.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

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
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 182, 114, 80),
              ),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
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
        child: Column(children: [
          // Expanded(
          //   child: SizedBox(
          //     height: 200.0,
          //     child: Carousel(
          //       boxFit: BoxFit.fill,
          //       autoplay: false,
          //       dotColor: Colors.yellow,
          //       dotPosition: DotPosition.bottomCenter,
          //       dotSize: 5.0,
          //       dotSpacing: 20.0,
          //       images: const [
          //         AssetImage('assets/images/images.jpg'),
          //         AssetImage('assets/images/download.jpg'),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.only(top: 60, right: 20, left: 20),
            child: const Text("Welcome",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 45, right: 30, left: 30),
            child: const Text(
                "To a system for easy recognition of Bhutanese traditional items made from Wood and Cane",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15)),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 35, right: 30, left: 30, bottom: 200),
            child: const Text(
                "Providing platform for gaining adequate knowledge on Bhutanese traditional items.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15)),
          ),
        ]),
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
        onTap: _onItemTapped,
      ),
    );
  }

  void setState(Null Function() param0) {}
}
