import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //print(size.height);
    return SizedBox(
      width: size.width * .85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        color: Colors.red,
        child: Center(child: Text("Hello")),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
        ),
      ),
    );
  }
}
