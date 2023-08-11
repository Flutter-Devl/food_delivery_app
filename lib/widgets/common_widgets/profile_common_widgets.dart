import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';

Widget buildHeader(BuildContext context) {
  return Text(
    "Profile",
    style: SizeConfig.getTheme(context).headlineSmall,
  );
}

Widget buildProfileImage(BuildContext context) {
  return ClipOval(
    child: Stack(
      children: [
        const SizedBox(
          height: 80,
          width: 80,
          child: CircleAvatar(backgroundColor: Colors.grey),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 20,
            width: 80,
            color: Colors.black.withOpacity(0.3),
            child: Image.asset(
              SizeConfig.getAssetName("camera.png", "virtual"),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildUserInfo(BuildContext context) {
  return Text(
    "Hi there!",
    style: SizeConfig.getTheme(context)
        .headlineMedium
        ?.copyWith(color: AppColor.primary),
  );
}

Widget buildSaveButton(BuildContext context) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {},
      child: const Text("Save"),
    ),
  );
}
