import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: image),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  name,
                  style: SizeConfig.getTheme(context)
                      .headlineMedium
                      ?.copyWith(color: AppColor.primary),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Image.asset(
                  SizeConfig.getAssetName("star_filled.png", "virtual"),
                ),
                const SizedBox(width: 5),
                const Text(
                  "4.9",
                  style: TextStyle(color: AppColor.pink),
                ),
                const SizedBox(width: 5),
                const Text("(124 ratings) Cafe"),
                const SizedBox(width: 5),
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    ".",
                    style: TextStyle(
                        color: AppColor.pink, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(" Western Food"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
