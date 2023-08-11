import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({
    Key? key,
    required this.name,
    required this.image,
    this.isNoti = false,
    required this.handler,
  }) : super(key: key);

  final String name;
  final Image image;
  final bool isNoti;
  final void Function() handler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          leading: SizedBox(
            width: 60,
            height: 60,
            child: image,
          ),
          title: Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColor.secondary,
            size: 20,
          ),
          tileColor: AppColor.placeholderBg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
