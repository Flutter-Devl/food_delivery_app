import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/format_input.dart';
import 'package:food_delivery_app/widgets/navbar.dart';
import 'package:food_delivery_app/widgets/common_widgets/profile_common_widgets.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profileScreen";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: buildHeader(context),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        buildProfileImage(context),
                        const SizedBox(height: 20),
                        buildUserInfo(context),
                        const SizedBox(height: 40),
                        const CustomFormImput(
                          label: "Name",
                          value: "XXXXX XXXXX",
                        ),
                        const SizedBox(height: 20),
                        const CustomFormImput(
                          label: "Email",
                          value: "example@gmail.com",
                        ),
                        const SizedBox(height: 20),
                        const CustomFormImput(
                          label: "Address",
                          value: "XXXXX XXXXX XXXXX XXXXX",
                        ),
                        const SizedBox(height: 20),
                        const CustomFormImput(
                          label: "Password",
                          value: "XXXXX XXXXX",
                          isPassword: true,
                        ),
                        const SizedBox(height: 20),
                        const CustomFormImput(
                          label: "Confirm Password",
                          value: "XXXXX XXXXX",
                          isPassword: true,
                        ),
                        const SizedBox(height: 20),
                        buildSaveButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
              bottom: 0, left: 0, child: CustomNavBar(profile: true)),
        ],
      ),
    );
  }
}
