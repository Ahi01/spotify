import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/auth_button.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/sign_up_button.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/text_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(Images.logo),
            const Spacer(),
            Text(
              'Millions of songs.\nFree on Spotify.',
              style: TextStyles.textBig(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 74),
            const SignUpBtn(),
            const SizedBox(height: 8),
            AutBtn(
              onTap: () {
                print('google button tapped');
              },
              path: Images.googleSvg,
              text: 'Continue with Google',
            ),
            const SizedBox(height: 11),
            AutBtn(
              onTap: () {
                print('facebook button tapped');
              },
              path: Images.f,
              text: 'Continue with Facebook',
            ),
            const SizedBox(height: 11),
            ButtonText(
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
