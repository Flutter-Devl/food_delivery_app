import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(width: 80, height: 80, child: image),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: SizeConfig.getTheme(context)
                      .headlineMedium
                      ?.copyWith(color: AppColor.primary),
                ),
                const Row(
                  children: [
                    Text("Cafe"),
                    SizedBox(width: 5),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.pink,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text("Western Food"),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      SizeConfig.getAssetName("star_filled.png", "virtual"),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "4.9",
                      style: TextStyle(color: AppColor.pink),
                    ),
                    const SizedBox(width: 10),
                    const Text('(124) Ratings')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
