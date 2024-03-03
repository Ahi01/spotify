import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class ButtonText extends StatelessWidget {
  final Color color;
  final String text;
  final Function onTap;

  const ButtonText(
      {super.key,
      this.color = Colors.white,
      this.text = 'Log in',
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('text button tapped');
      },
      child: Text(
        'Log in',
        style: TextStyles.texButton(color: color),
      ),
    );
  }
}
