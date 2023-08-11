import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/introduction_screen.dart';
import 'package:food_delivery_app/widgets/text_field.dart';

class NewPwScreen extends StatelessWidget {
  static const routeName = "/newPw";

  const NewPwScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("New Password",
            style: SizeConfig.getTheme(context).titleLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              "Please enter your email to recieve a link to create a new password via email",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const CustomTextInput(hintText: "New Password"),
            const SizedBox(height: 20),
            const CustomTextInput(
              hintText: "Confirm Password",
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(IntroScreen.routeName);
                },
                child: const Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
