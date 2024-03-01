import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class WrapItem extends StatelessWidget {
  const WrapItem({super.key, required this.onTap, required this.text});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          border: Border.all(
            color: AppColors.greyDark,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        child: Text(
          text,
          style: TextStyles.texButton(),
        ),
      ),
    );
  }
}
