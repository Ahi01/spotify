import 'package:flutter/material.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 50),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Create an account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What's your password?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 46, 45, 45),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const TextField(
                obscureText: true,
                obscuringCharacter: 'z',style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Enter yuor password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Use at least 8 characters.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'GenderWidget');
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
