import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class CustomFormImput extends StatelessWidget {
  const CustomFormImput({
    Key? key,
    required this.label,
    required this.value,
    this.isPassword = false,
  }) : super(key: key);

  final String label;
  final String value;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: const ShapeDecoration(
          shape: StadiumBorder(), color: AppColor.placeholderBg),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
        ),
        obscureText: isPassword,
        initialValue: value,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
