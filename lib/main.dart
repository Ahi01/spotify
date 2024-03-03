import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  final userBox = await Hive.openBox(Boxes.userBox);
  runApp(
    App(userBox),
  );
}
