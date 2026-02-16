import 'package:chefio/core/theme/text_manager.dart';
import 'package:chefio/core/widget/app_button.dart';
import 'package:chefio/core/widget/app_text_field.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isPasswordVisible = true;
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16,
                  ),
                  child: AppTextField(hint: "email"),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: AppTextField(
                    isPassword: _isPasswordVisible,
                    hint: "password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      child: _isPasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "forgot password?",
                      style: TextManager.font20darkBlue500wight,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: AppButton(
                    onTap: () => Navigator.pushNamed(context, 'homeScreen'),
                    text: 'Login',
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have any account? ",
                      style: TextManager.font20darkBlue500wight,
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
