import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);

  static TextStyle textStyle = TextStyle(fontSize: 16, color: primaryColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 28, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 24, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 18, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}