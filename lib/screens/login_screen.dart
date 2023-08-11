import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/forgot_password_screen.dart';
import 'package:food_delivery_app/screens/introduction_screen.dart';
import 'package:food_delivery_app/screens/sign_up_screen.dart';
import 'package:food_delivery_app/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Login",
                style: SizeConfig.getTheme(context).titleLarge,
              ),
              const Spacer(flex: 2),
              const CustomTextInput(hintText: "Email"),
              const SizedBox(height: 16),
              const CustomTextInput(hintText: "Password"),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(IntroScreen.routeName);
                  },
                  child: Text(
                    "Login",
                    style: SizeConfig.getTheme(context)
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ForgetPwScreen.routeName);
                },
                child: const Text("Forget your password?"),
              ),
              const Spacer(flex: 2),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(SignUpScreen.routeName);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?"),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: AppColor.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
