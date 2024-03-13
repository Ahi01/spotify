import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';


class ButtonText extends StatelessWidget {
  const ButtonText({super.key, this.color = Colors.white,this.text='Log in',required this.onTap});
  final Color color;
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>onTap(),
      child: Text(
        text,
        style: TextStyles.texButton(color: color),
      ),
    );
  }
}
