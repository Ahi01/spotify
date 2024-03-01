import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';

class CSearchField extends StatelessWidget {
  const CSearchField({
    super.key,
    this.fillColor = Colors.white,
    this.hintText,
    this.cursorColor = Colors.white,
    required this.controller,
    required this.onChanged,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon = const SizedBox(width: 16),
    this.style,
    this.hintStyle,
  });
  final ValueChanged<String>? onChanged;
  final Color? fillColor;
  final String? hintText;
  final Color? cursorColor;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget prefixIcon;
  final TextStyle? style;
  final TextStyle? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style ?? TextStyles.texButton(),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintStyle,
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        disabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedErrorBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        contentPadding: const EdgeInsets.only(right: 16, top: 11, bottom: 11),
      ),
      onChanged: onChanged,
    );
  }
}
