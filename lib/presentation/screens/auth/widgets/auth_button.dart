import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AutBtn extends StatelessWidget {
  const AutBtn(
      {super.key, required this.onTap, required this.path, required this.text});
  final String text;
  final String path;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: const BorderSide(color: AppColors.greyDark),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(double.infinity, 45),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(path),
          Text(
            text,
            style: TextStyles.texButton(),
          ),
          SvgPicture.asset(
            path,
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
