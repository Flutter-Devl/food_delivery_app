import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/common_widgets/common_widgets.dart';
import 'package:food_delivery_app/widgets/navbar.dart';
import 'package:food_delivery_app/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/homeScreen";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Home", style: SizeConfig.getTheme(context).titleLarge),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Deilivering to"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: DropdownButtonHideUnderline(
                    child: SizedBox(
                      width: 250,
                      child: DropdownButton(
                        value: "current location",
                        items: const [
                          DropdownMenuItem(
                            value: "current location",
                            child: Text("Current Location"),
                          ),
                        ],
                        icon: Image.asset(
                          SizeConfig.getAssetName(
                              "dropdown_filled.png", "virtual"),
                        ),
                        style: SizeConfig.getTheme(context).headlineMedium,
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const MySearchBar(title: "Search Food"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular",
                        style: SizeConfig.getTheme(context).headlineSmall,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("View all"),
                      ),
                    ],
                  ),
                ),
                buildCategoryList(context),
                const SizedBox(height: 20),
                mostPopularCard(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Items",
                        style: SizeConfig.getTheme(context).headlineSmall,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("View all"),
                      ),
                    ],
                  ),
                ),
                recentItemCard(context),
                const SizedBox(height: 100),
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(home: true)),
        ],
      ),
    );
  }
}
