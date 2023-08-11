import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/cards_design/category_card.dart';
import 'package:food_delivery_app/widgets/cards_design/most_popular_card.dart';
import 'package:food_delivery_app/widgets/cards_design/recent_item_card.dart';

Widget buildCategoryList(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.only(left: 20),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryCard(
            image: Image.asset(
              SizeConfig.getAssetName("hamburger2.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Offers",
          ),
          const SizedBox(width: 10),
          CategoryCard(
            image: Image.asset(
              SizeConfig.getAssetName("rice2.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Chinese",
          ),
          const SizedBox(width: 10),
          CategoryCard(
            image: Image.asset(
              SizeConfig.getAssetName("fruit.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Italian",
          ),
          const SizedBox(width: 10),
          CategoryCard(
            image: Image.asset(
              SizeConfig.getAssetName("rice.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Desi",
          ),
          const SizedBox(width: 10),
        ],
      ),
    ),
  );
}

Widget mostPopularCard() {
  return Container(
    height: 250,
    width: double.infinity,
    padding: const EdgeInsets.only(left: 20),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MostPopularCard(
            image: Image.asset(
              SizeConfig.getAssetName("pizza4.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Cafe De Bambaa",
          ),
          const SizedBox(width: 30),
          MostPopularCard(
            name: "Burger by Bella",
            image: Image.asset(
              SizeConfig.getAssetName("dessert3.jpg", "real"),
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    ),
  );
}

Widget recentItemCard(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        RecentItemCard(
          image: Image.asset(
            SizeConfig.getAssetName("pizza3.jpg", "real"),
            fit: BoxFit.cover,
          ),
          name: "Mulberry Pizza by Josh",
        ),
        RecentItemCard(
            image: Image.asset(
              SizeConfig.getAssetName("coffee.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Barita"),
        RecentItemCard(
            image: Image.asset(
              SizeConfig.getAssetName("pizza.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Pizza Rush Hour"),
      ],
    ),
  );
}
