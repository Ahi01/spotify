import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle main(
          {double fontSize = 14,
          FontWeight fontWeight = FontWeight.bold,
          Color color = Colors.white}) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      );
  static TextStyle textGrey({
    double fontSize = 10,
    FontWeight fontWeight = FontWeight.normal,
    Color color = const Color.fromRGBO(217, 217, 217, 1),
  }) =>
      TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      );
  static textGreyAppbar({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.bold,
    Color color = const Color.fromRGBO(217, 217, 217, 1),
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
  static TextStyle textBig({
    double fontSize = 32,
    FontWeight fontWeight = FontWeight.bold,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.white,
      );
  static TextStyle textTitle({
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.white,
      );
  static TextStyle texButton({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.white,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
       static TextStyle searchHint({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
}
