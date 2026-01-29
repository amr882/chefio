import 'package:chefio/core/theme/color_manager.dart';
import 'package:chefio/core/theme/text_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'loginScreen'),
        child: Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.mainGreen,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text('Get Started', style: TextManager.font18white600wight),
          ),
        ),
      ),
    );
  }
}
