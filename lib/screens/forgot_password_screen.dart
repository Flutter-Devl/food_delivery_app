import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/otp_screen.dart';
import 'package:food_delivery_app/widgets/text_field.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName = "/restpwScreen";

  const ForgetPwScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: SizeConfig.getScreenWidth(context),
        height: SizeConfig.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Text(
                  "Reset Password",
                  style: SizeConfig.getTheme(context).titleLarge,
                ),
                const Spacer(),
                const Text(
                  "Please enter your email to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                const Spacer(flex: 2),
                const CustomTextInput(hintText: "Email"),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SendOTPScreen.routeName);
                    },
                    child: const Text("Send"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
