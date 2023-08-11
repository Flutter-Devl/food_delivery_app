import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 30, right: 20),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: AppColor.placeholder.withOpacity(0.25)),
            ),
            color: AppColor.placeholderBg,
          ),
          child: widget),
    );
  }
}
