import 'package:flutter/material.dart';
import 'package:object_detection_app/ui_designs/homepage.dart';
import 'package:object_detection_app/ui_designs/second_screen.dart';

void main() => runApp(FirstScreen());

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
                top: 150, right: 30, left: 30, bottom: 10),
            child: Image.asset(
              'assets/images/image1.png',
              width: 250,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 35, right: 30, left: 30, bottom: 30),
            child: const Text(
                "Discover the beauty and cultural significance of Bhutanese traditional objects through our app.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16)),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 35, right: 30, left: 30, bottom: 20),
            child: const Text(
                "From the wooden items to hand-woven cane items download our app now and explore the Bhutanese traditional objects.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16)),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 65, right: 30, left: 30, bottom: 20),
            child: Image.asset(
              'assets/images/more.png',
              width: 50,
              height: 20,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 35, left: 10, right: 20, bottom: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 250),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/right-arrow.png',
                    width: 30,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
