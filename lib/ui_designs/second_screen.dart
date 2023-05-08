import 'package:flutter/material.dart';
import 'package:object_detection_app/ui_designs/homepage.dart';

void main() => runApp(SecondScreen());

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 10),
            child: Image.asset(
              'assets/images/image3.png',
              width: 500,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 15, right: 30, left: 30, bottom: 30),
            child: const Text(
                "The application offers immediate detection of objects in both images and videos using image recognition technology.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16)),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 35, right: 30, left: 30, bottom: 20),
            child: const Text(
                "Additionally, it includes a support section to assist users who encounter any difficulties while using the app.",
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
                  child: const Text("Skip",
                      style: TextStyle(fontSize: 25, color: Colors.blue)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 250),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
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
