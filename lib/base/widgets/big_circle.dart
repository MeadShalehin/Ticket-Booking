import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )
          )),
    );
  }
}
