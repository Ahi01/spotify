import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class MiniTitle extends StatelessWidget {
  const MiniTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Images.i1,
          width: 48,
          height: 48,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              'NEW RELEASE FROM',
              style: TextStyles.textGrey(color: Colors.grey),
            ),
            const SizedBox(width: 4),
            Text(
              'Sơn Tùng M-TP',
              style: TextStyles.texButton(color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
