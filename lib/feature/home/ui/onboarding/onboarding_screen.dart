import 'package:chefio/core/theme/text_manager.dart';
import 'package:chefio/feature/home/ui/onboarding/widgets/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/pngs/onboarding.png',
                    height: 55.h,
                    width: 100.w,
                  ),
                  Text('Start Cooking', style: TextManager.font24black700wight),
                  SizedBox(height: 2.h),
                  Text(
                    'Let’s join our community\nto cook better food!',
                    textAlign: TextAlign.center,
                    style: TextManager.font20gray400wight,
                  ),
                  SizedBox(height: 10.h),
                  OnboardingButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
