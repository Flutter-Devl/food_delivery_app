import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.name,
    required this.count,
    required this.imageShape,
  }) : super(key: key);

  final String name;
  final String count;
  final Widget imageShape;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Container(
        height: 80,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 168, 172, 177),
              Color.fromARGB(255, 253, 255, 240)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColor.placeholder.withOpacity(0.5),
              offset: const Offset(0, 2),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: SizedBox(width: 60, height: 60, child: imageShape),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "$count items",
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColor.secondary,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.placeholder,
                    offset: Offset(0, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Icon(Icons.arrow_forward, color: AppColor.primary),
            ),
          ],
        ),
      ),
    );
  }
}
