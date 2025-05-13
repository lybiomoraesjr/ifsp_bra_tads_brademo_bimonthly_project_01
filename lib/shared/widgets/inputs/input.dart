import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';

class Input extends StatelessWidget {
  final String? placeholder;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  const Input({super.key, this.placeholder, this.prefixIcon, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller ?? TextEditingController(),
      style: TextStyle(height: 0.85, fontSize: 14.0, color: CustomColors.icon),
      textAlignVertical: TextAlignVertical(y: 0.6),
      decoration: InputDecoration(
        filled: true,
        fillColor: CustomColors.white,
        hintStyle: TextStyle(color: CustomColors.muted),
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(
            color: CustomColors.border,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(
            color: CustomColors.border,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        hintText: placeholder ?? "",
      ),
    );
  }
}
