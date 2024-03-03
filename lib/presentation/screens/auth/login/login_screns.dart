import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/app_bar.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/mini_button.dart';
import 'package:flutter_application_3/presentation/widgets/text_field.dart';

class LoginScrenn extends StatefulWidget {
  const LoginScrenn({super.key});

  @override
  State<LoginScrenn> createState() => _LoginScrennState();
}

class _LoginScrennState extends State<LoginScrenn> {
  final _emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool enable = false;
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(
        title: 'Create an account',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              'What’s your email?',
              style: TextStyles.textTitle(),
            ),
            const SizedBox(height: 16),
            Form(
              key: formKey,
              child: CTextField(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
                validator: (p0) {
                  if (p0 != null && !p0.contains('@')) {
                    return 'Введите почту корректно';
                  }
                  return null;
                },
                controller: _emailController,
                onChanged: (p0) {
                  if (p0.isNotEmpty) {
                    setState(() {
                      enable = true;
                    });
                  } else {
                    setState(() {
                      enable = false;
                    });
                  }
                },
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "You'll need to confirm this email later.",
              style: TextStyles.textGrey(color: Colors.white),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: MiniBtn(
                onTap: () {
                  // if (formKey.currentState?.validate() == true) {
                  //   Navigator.of(context).pushNamed(AppRoutes.password);
                  // }
                },
                text: 'Next',
                enable: enable,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
