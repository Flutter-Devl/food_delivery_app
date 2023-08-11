import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class NotiCard extends StatelessWidget {
  const NotiCard({
    Key? key,
    required this.time,
    required this.title,
    this.color = Colors.white,
  }) : super(key: key);

  final String time;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            color: AppColor.pink,
            shape: BoxShape.circle,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          time,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
