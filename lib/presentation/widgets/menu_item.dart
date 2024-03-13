import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class MenuItem extends StatelessWidget {
  final BoxBorder? border;
  final Color bgColor;
  final String text;

  const MenuItem(
      {super.key,
      this.border,
      this.bgColor = AppColors.greyDark,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: border,
        color: bgColor,
      ),
      child: Text(
        text,
        style: TextStyles.searchHint(
          color: Colors.white,
        ),
      ),
    );
  }
}
