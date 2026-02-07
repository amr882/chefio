import 'package:chefio/core/theme/color_manager.dart';
import 'package:chefio/core/theme/text_manager.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String hint;
  final Widget? suffixIcon;
  final bool isPassword;
  final TextEditingController? controller;
  final TextStyle? hintStyle;

  const AppTextField({
    super.key,
    this.padding,
    required this.hint,
    this.suffixIcon,
    this.isPassword = false,
    this.controller,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        textAlignVertical: TextAlignVertical.center,
        style: TextManager.font20darkBlue500wight,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 24,
          ),

          hintText: hint,
          hintStyle: hintStyle ?? TextManager.font20gray400wight,

          suffixIcon: suffixIcon,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: ColorManager.mainGreen,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: ColorManager.lightGray,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
