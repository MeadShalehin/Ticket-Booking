//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  // ? :

}



/*void main() {                //---------------------- android app view
  var myList = [
    "Flutter",
    "SwiftUI",
    "Dart",
  ];
  print("${myList.length}");
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ), // Correctly added the closing parenthesis
  );
}*/                        //---------------------------for iOS and other OS


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(), //--------------------------Updated to use BottomNavBar as the home
    );
  }
}
