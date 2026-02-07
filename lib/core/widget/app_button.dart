import 'package:chefio/core/theme/color_manager.dart';
import 'package:chefio/core/theme/text_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const AppButton({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.mainGreen,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(text, style: TextManager.font18white600wight),
          ),
        ),
      ),
    );
  }
}
