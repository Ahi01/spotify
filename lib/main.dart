import 'package:flutter/material.dart';
import 'package:flutter_application_3/More_artist/More_artist.dart';
import 'package:flutter_application_3/More_artist/Start_Listening.dart';
import 'package:flutter_application_3/Register/GenderWidget.dart';
import 'package:flutter_application_3/Register/Password.dart';
import 'package:flutter_application_3/Register/Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: const ColorScheme.highContrastDark(primary: Colors.black),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthWidget(),
        'RegisterWidget': (context) => const RegisterWidget(),
        'PasswordWidget': (context) => const PasswordWidget(),
        'GenderWidget': (context) => const GenderWidget(),
        'MoreArtistWidget': (context) => const MoreArtistWidget(),
        'GreatWidget': (context) => const GreatWidget(),
      },
    );
  }
}

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 200),
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image70x70.png'),
                    fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          const Text(
            'Millions of songs.',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Free on Spotify.',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 80),
          Stack(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 45),
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'Sign up free',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 45),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 0.1,
                  ),
                ),
                child: const Text(
                  'Continue with Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 15),
                child: Image.asset('assets/images/goole.png'),
              )
            ],
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 45),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 0.1,
                  ),
                ),
                child: const Text(
                  'Continue with Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 15),
                child: Image.asset('assets/images/facebook.png'),
              )
            ],
          ),
          const SizedBox(height: 10),
          TextButton(
            style: TextButton.styleFrom(
              fixedSize: const Size(300, 45),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'RegisterWidget');
            },
            child: const Text(
              'Log in',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
