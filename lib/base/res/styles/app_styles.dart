import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles{
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);

  static TextStyle headLineStyle1 = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: textColor);

  static TextStyle headLineStyle2 = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      );
}

/*
class BoxStyles{
  static Color primaryColor =primary;
  static Color boxColor= const Color(0xFFFFD740);

  static BoxDecoration boxStyle1 = BoxDecoration(
    borderRadius: BorderRadius.circular(10), // Use borderRadius here
    color: boxColor,
  );

}*/
