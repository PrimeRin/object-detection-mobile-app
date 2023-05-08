import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:object_detection_app/ui_designs/homepage.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final XFile image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, right: 20, left: 20),
              child: const Text("Generating Result",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: const Text("It may take a few moments",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60, right: 20, left: 20),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 150,
                child: Image.file(
                  File(image.path),
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Image.asset(
                'assets/images/image2.gif',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 90, right: 20, left: 20),
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(50))),
                ),
                child: const Text("Cancle Recognition",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                      color: Colors.blue,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
