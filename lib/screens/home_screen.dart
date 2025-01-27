import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //for scrollable #listview
        body: ListView(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Column(
                  children: [
                    Text("Good Morning"),
                    Text("Book Tickets"),
                  ],
                ),
                Container(
                  color: Colors.amberAccent,
                  width: 100,
                  height: 70,
                ),
              ],
            ),
            Row(
              children: [
                Text("text1"),
                Text("text2"),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
