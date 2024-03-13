import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/routes.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/mini_artists_item.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/mini_button.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/text_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var artists = ModalRoute.of(context)?.settings.arguments
        as List<Map<String, dynamic>>;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 56),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.red.withOpacity(0.7),
              AppColors.black,
              AppColors.black,
              AppColors.black,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: Stack(
                  alignment: Alignment.center,
                  children: artists.map(
                    (e) {
                      var indexOf = artists.indexOf(e);
                      return MiniArtistsItem(
                        path: e['image'],
                        index: indexOf + 1,
                        amount: artists.length,
                      );
                    },
                  ).toList()),
            ),
            const SizedBox(height: 24),
            Text(
              'Great Picks',
              style: TextStyles.textTitle(),
            ),
            const SizedBox(height: 12),
            Text(
              'We’ve made a playlist to get you started',
              style: TextStyles.texButton(),
            ),
            const SizedBox(height: 48),
            MiniBtn(
              onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.main, (Route route) => false),
              text: 'Start Listening',
              enable: true,
            ),
            const SizedBox(height: 8),
            ButtonText(
              text: 'Not now',
              color: AppColors.greenLight,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
