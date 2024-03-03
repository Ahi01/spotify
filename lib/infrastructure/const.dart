import 'package:flutter/material.dart';

class Images {
  static const logo = 'assets/images/spotify.png';
  static const google = 'assets/images/google.png';
  static const googleSvg = 'assets/images/google.svg';
  static const verified = 'assets/images/verified.svg';
  static const f = 'assets/images/f.svg';
  static const i1 = 'assets/images/1.png';
  static const i2 = 'assets/images/2.png';
  static const i3 = 'assets/images/3.png';
  static const i01 = 'assets/images/01.svg';
  static const i02 = 'assets/images/02.svg';
  static const i001 = 'assets/images/001.svg';
  static const i002 = 'assets/images/002.svg';
  static const i003 = 'assets/images/003.svg';
}

class AppColors {
  static const black = Colors.black;
  static const greenLight = Color.fromRGBO(30, 216, 96, 1);
  static const greyDark = Color.fromRGBO(65, 65, 65, 1);
  static const focusedField = Color.fromRGBO(167, 167, 167, 1);
  static const red = Color.fromRGBO(195, 44, 48, 1);
}

class Boxes {
  static const String userBox = 'userBox';
}

enum UserBox { email, password, gender, artists }
