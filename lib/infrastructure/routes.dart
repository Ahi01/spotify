import 'package:flutter_application_3/presentation/screens/auth/sign_up/artists_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/email_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/gender_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/password_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/auth_screen.dart';

final appRoutes = {
  AppRoutes.home: (context) => const AuthScreen(),
  AppRoutes.email: (context) => const EmailScreen(),
  AppRoutes.password: (context) => const PasswordScreen(),
  AppRoutes.gender: (context) => const GenderScreen(),
  AppRoutes.artists: (context) => const ArtistsScreen(),
};

class AppRoutes {
  static const home = '/';
  static const email = '/email';
  static const password = '/password';
  static const gender = '/gender';
  static const artists = '/artists';
}
