import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/routes.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class SignUpBtn extends StatelessWidget {
  const SignUpBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.greenLight),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 45),
        ),
      ),
      onPressed: () => Navigator.of(context).pushNamed(AppRoutes.email),
      child: Text(
        'Sign up free',
        style: TextStyles.texButton(color: AppColors.black),
      ),
    );
  }
}
