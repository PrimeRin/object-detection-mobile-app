import 'package:flutter/material.dart';
import 'package:object_detection_app/ui_designs/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
          )),
      home: MyHomePage(),
    );
  }
}
