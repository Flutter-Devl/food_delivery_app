import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    Key? key,
    required this.hintText,
    this.padding = const EdgeInsets.only(left: 40),
  }) : super(key: key);

  final String hintText;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const ShapeDecoration(
          color: AppColor.placeholderBg, shape: StadiumBorder()),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColor.placeholder),
          contentPadding: padding,
        ),
      ),
    );
  }
}
