import 'package:chefio/core/theme/text_manager.dart';
import 'package:chefio/feature/home/ui/log_in_screen/widget/log_in_screen_button.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome Back!', style: TextManager.font24black700wight),
                SizedBox(height: 10),
                Text(
                  'Please enter your account here',
                  style: TextManager.font20gray400wight,
                ),

                //  text fields
                SizedBox(height: 50),
                Text("username"),
                SizedBox(height: 16),
                Text("password"),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "forgot password?",
                      style: TextManager.font20black500wight,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                LogInScreenButton(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have any account?",
                      style: TextManager.font20black500wight,
                    ),
                    Text("Sign Up", style: TextManager.font20green500wight),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
