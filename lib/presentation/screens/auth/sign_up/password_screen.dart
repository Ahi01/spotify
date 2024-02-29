import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_application_3/presentation/text_field.dart';
import '../widgets/app_bar.dart';
import '../widgets/mini_button.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final _controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isError = false;
  bool enable = false;
  bool hide = true;
  @override
  void dispose() {
    _controller.dispose();
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
              'Create a password',
              style: TextStyles.textTitle(),
            ),
            const SizedBox(height: 16),
            Form(
              key: formKey,
              child: CTextField(
                style: TextStyles.main(
                    color: isError ? AppColors.red : Colors.white),
                errorTextStyle: TextStyles.textGrey(color: AppColors.red),
                obscureText: hide,
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        hide = !hide;
                      });
                    },
                    child: Icon(
                      hide
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.white,
                    )),
                keyboardType: TextInputType.emailAddress,
                prefix: const SizedBox(width: 16),
                validator: (p0) {
                  if (p0 != null && p0.length < 8) {
                    setState(() {
                      isError = true;
                    });
                    return 'Use at least 8 characters';
                  }
                  setState(() {
                    isError = false;
                  });
                  return null;
                },
                controller: _controller,
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
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: MiniBtn(
                onTap: () {
                  if (formKey.currentState?.validate() == true) {
                    // Navigator.of(context).pushNamed(routeName)
                  }
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
