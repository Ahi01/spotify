import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('text button tapped');
      },
      child: Text(
        'Log in',
        style: TextStyles.texButton(),
      ),
    );
  }
}
