import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';


class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AuthAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyles.textGreyAppbar(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
    );
  }
}
