import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/routes.dart';
import 'package:flutter_application_3/infrastructure/theme.dart';
import 'package:hive/hive.dart';

class App extends StatelessWidget {
  const App(this.userBox, {super.key});
  final Box userBox;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: theme,
      initialRoute: AppRoutes.main,
      routes: appRoutes,
    );
  }
}
