import 'package:flutter_application_3/presentation/screens/auth/sign_up/email_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth/sign_up/password_screen.dart';
import 'package:flutter_application_3/presentation/screens/auth_screen.dart';

final appRoutes = {
  AppRoutes.home: (context) => const AuthScreen(),
  AppRoutes.email: (context) => const EmailScreen(),
  AppRoutes.password: (context) => const PasswordScreen(),
};

class AppRoutes {
  static const home = '/';
  static const email = '/email';
  static const password = '/password';
}
