import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF435A82);
  static Color ticketPeachPuff = const Color(0xFFFFF0DE);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headLineStyle2 =
      const TextStyle(fontSize: 21, fontWeight: FontWeight.bold);

  static TextStyle headLineStyle3 = const TextStyle(
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
