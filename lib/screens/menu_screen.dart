import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/cards_design/menu_card.dart';
import 'package:food_delivery_app/widgets/clippers/custom_diamond.dart';
import 'package:food_delivery_app/widgets/clippers/custom_triangle.dart';
import 'package:food_delivery_app/widgets/navbar.dart';
import 'package:food_delivery_app/widgets/search_bar.dart';

class MenuScreen extends StatelessWidget {
  static const routeName = "/menuScreen";

  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Menu",
          style: SizeConfig.getTheme(context).headlineSmall,
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              const MySearchBar(title: "Search Food"),
              const SizedBox(height: 20),
              SizedBox(
                  height: SizeConfig.getScreenHeight(context) * 0.6,
                  width: SizeConfig.getScreenWidth(context),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MenuCard(
                              imageShape: ClipOval(
                                child: SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    SizeConfig.getAssetName(
                                        "western2.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              name: "Food",
                              count: "120",
                            ),
                            const SizedBox(height: 20),
                            MenuCard(
                              imageShape: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    SizeConfig.getAssetName(
                                        "coffee2.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              name: "Beverage",
                              count: "220",
                            ),
                            const SizedBox(height: 20),
                            MenuCard(
                              imageShape: ClipPath(
                                clipper: CustomTriangle(),
                                child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    SizeConfig.getAssetName(
                                        "dessert.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              name: "Desserts",
                              count: "135",
                            ),
                            const SizedBox(height: 20),
                            MenuCard(
                              imageShape: ClipPath(
                                clipper: CustomDiamond(),
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                    SizeConfig.getAssetName(
                                        "hamburger3.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              name: "Promotions",
                              count: "25",
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(menu: true))
        ],
      ),
    );
  }
}
