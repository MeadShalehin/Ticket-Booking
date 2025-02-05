//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/home/all_tickets.dart';
import 'package:ticket_booking_app/screens/home/widgets/all_hotels.dart';
import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  // ? :
}

/*void main() {
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
}*/ //---------------------------for iOS and other OS

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => const BottomNavBar(),
          "/all_tickets": (context) => const AllTickets(),
          "/all_hotels": (context) => const AllHotels()});
  }
}
