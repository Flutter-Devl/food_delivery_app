import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';

  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: SizeConfig.getScreenWidth(context),
      height: SizeConfig.getScreenHeight(context),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: SizeConfig.getTheme(context).titleLarge,
              ),
              const Spacer(flex: 2),
              const CustomTextInput(hintText: "Name"),
              const Spacer(),
              const CustomTextInput(hintText: "Email"),
              const Spacer(),
              const CustomTextInput(hintText: "Mobile No"),
              const Spacer(),
              const CustomTextInput(hintText: "Address"),
              const Spacer(),
              const CustomTextInput(hintText: "Password"),
              const Spacer(),
              const CustomTextInput(hintText: "Confirm Password"),
              const Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?"),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: AppColor.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
