//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  var test = TestClass(x: 4, y: 10);
  print(test.x);
  var newTest = test.copyWith(30, 40);
  print(newTest.x);
}

class TestClass {
  int x;
  int y;

  TestClass({required this.x, required this.y});
  TestClass copyWith(int? x, int? y) {
    return TestClass(x: 5, y: 20);
  }
}
// android app view

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
}*/
//for iOS and other os

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(), // Updated to use BottomNavBar as the home
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],

      )
    );
  }
}*/
