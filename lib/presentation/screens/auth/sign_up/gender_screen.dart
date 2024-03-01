import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/routes.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/app_bar.dart';
import 'package:flutter_application_3/presentation/widgets/wrap_item.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  final List<String> genders = [
    'Female',
    'Male',
    'Non-brinay',
    'Other',
    'Prefer not to say',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Scaffold(
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
                'What’s your gender?',
                style: TextStyles.textTitle(),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: genders
                    .map(
                      (e) => WrapItem(
                        text: e,
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutes.artists);
                        },
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
