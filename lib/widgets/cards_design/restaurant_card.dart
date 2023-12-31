import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: image),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: SizeConfig.getTheme(context).displaySmall,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(
                      SizeConfig.getAssetName("star_filled.png", "virtual"),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.pink,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text("(124 ratings)"),
                    const SizedBox(width: 5),
                    const Text("Cafe"),
                    const SizedBox(width: 5),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.pink,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text("Western Food"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
