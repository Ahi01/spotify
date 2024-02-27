import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key});

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
                "What's your gender?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(98, 45),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 0.1,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'MoreArtistWidget');
                  },
                  child: const Text(
                    'Female',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(82, 45),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 0.1,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Male',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(126, 45),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 0.1,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Non-binary',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(88, 45),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 0.1,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Other',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(161, 45),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 0.1,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Prefer not to say',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
