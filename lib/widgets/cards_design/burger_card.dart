import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class BurgerCard extends StatelessWidget {
  const BurgerCard(
      {Key? key, required this.name, required this.price, this.isLast = false})
      : super(key: key);

  final String name;
  final String price;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: isLast
              ? BorderSide.none
              : BorderSide(
                  color: AppColor.placeholder.withOpacity(0.25),
                ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "$name x1",
              style: const TextStyle(color: AppColor.primary, fontSize: 16),
            ),
          ),
          Text(
            "\$$price",
            style: const TextStyle(
              color: AppColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
