import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';

class MySearchBar extends StatelessWidget {
  final String title;
  const MySearchBar({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const ShapeDecoration(
            shape: StadiumBorder(), color: AppColor.placeholderBg),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset(
              SizeConfig.getAssetName("search_filled.png", "virtual"),
            ),
            hintText: title,
            hintStyle:
                const TextStyle(color: AppColor.placeholder, fontSize: 18),
            contentPadding: const EdgeInsets.only(top: 17),
          ),
        ),
      ),
    );
  }
}
