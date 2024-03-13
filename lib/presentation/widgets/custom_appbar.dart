// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class CustomAppbar extends StatelessWidget {
  final List<Widget> icons;
  final String text;
  final String? ava;
  const CustomAppbar({
    Key? key,
    required this.icons,
    required this.text,
    this.ava,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (ava != null) ...[
              CircleAvatar(
                backgroundImage: AssetImage(ava!),
              ),
              const SizedBox(width: 16),
            ],
            Text(
              text,
              style: TextStyles.textTitle(),
            ),
          ],
        ),
        Row(
          children: icons,
        )
      ],
    );
  }
}
