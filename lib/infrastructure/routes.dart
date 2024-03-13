import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/presentation/screens/auth/login/login_screns.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/artists_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/email_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/gender_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/password_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/auth_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/success_screen.dart';
import 'package:flutter_application_3/presentation/screens/home/home_screen.dart';
import 'package:hive/hive.dart';

final appRoutes = {
  AppRoutes.main: (context) {
    return Hive.box(Boxes.userBox).isEmpty?const AuthScreen():const HomeScreen();
  },
  AppRoutes.email: (context) => const EmailScreen(),
  AppRoutes.password: (context) => const PasswordScreen(),
  AppRoutes.gender: (context) => const GenderScreen(),
  AppRoutes.artists: (context) => const ArtistsScreen(),
  AppRoutes.success: (context) => const SuccessScreen(),
  AppRoutes.login: (context) => const LoginScreen(),

};


class AppRoutes {
  static const main = '/';
  static const email = '/email';
  static const password = '/password';
  static const gender = '/gender';
  static const artists = '/artists';
  static const success = '/success';
  static const login = '/login';
}
