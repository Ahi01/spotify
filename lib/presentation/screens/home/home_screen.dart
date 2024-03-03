import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/routes.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final userBox = Hive.box(Boxes.userBox);
  @override
  Widget build(BuildContext context) {
    print('ключи - ${userBox.keys}');
    print('значение - ${userBox.values}');

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await userBox.clear();
              if (context.mounted) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.main, (Route route) => false);
              }
            },
            icon: const Icon(Icons.login_outlined),
          ),
        ],
        title: const Text('fafaf'),
      ),
      body: const Center(
          child: Text(
        'hemmaeeafaf',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
