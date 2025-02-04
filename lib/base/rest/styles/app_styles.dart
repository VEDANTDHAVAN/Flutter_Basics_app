import 'dart:ui';
import 'package:flutter/material.dart';

Color primary = const Color(0xff070118);

class AppStyles{
  static Color primaryColor = primary;
  static Color textColor = Color(0xFFab0bab);
  static Color headColor = Color(0xFF201050);
  static TextStyle headlineStyle1 = TextStyle(
    fontSize: 26, fontWeight: FontWeight.w500,
    color: headColor,
  );
  static TextStyle headlineStyle2 = TextStyle(
    fontSize: 21, fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headlineStyle3 = TextStyle(
    fontSize: 18, fontWeight: FontWeight.w500,
    color: AppStyles.primaryColor,
  );
}