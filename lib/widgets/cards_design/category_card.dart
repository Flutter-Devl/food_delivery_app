import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(width: 100, height: 100, child: image),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: SizeConfig.getTheme(context)
              .headlineMedium
              ?.copyWith(color: AppColor.primary, fontSize: 16),
        ),
      ],
    );
  }
}
