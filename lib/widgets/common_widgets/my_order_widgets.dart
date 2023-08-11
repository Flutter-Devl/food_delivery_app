import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/profile_screens/checkout_screen.dart';
import 'package:food_delivery_app/widgets/cards_design/burger_card.dart';

Widget buildOrderDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 80,
                width: 80,
                child: Image.asset(
                  SizeConfig.getAssetName("hamburger.jpg", "real"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "King Burgers",
                  style: SizeConfig.getTheme(context).displaySmall,
                ),
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
                    const Text(" (124 ratings)"),
                  ],
                ),
                const Row(
                  children: [
                    Text("Burger"),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 5,
                      ),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text("Western Food"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 15,
                      child: Image.asset(
                        SizeConfig.getAssetName("loc.png", "virtual"),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text("No 03, 4th Lane, Newyork"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildBurgerCards() {
    return Container(
      width: double.infinity,
      color: AppColor.placeholderBg,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            BurgerCard(
              price: "16",
              name: "Beef Burger",
            ),
            BurgerCard(
              price: "14",
              name: "Classic Burger",
            ),
            BurgerCard(
              price: "17",
              name: "Cheese Chicken Burger",
            ),
            BurgerCard(
              price: "15",
              name: "Chicken Legs Basket",
            ),
            BurgerCard(
              price: "6",
              name: "French Fries Large",
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDeliveryInfo(TextTheme theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.placeholder.withOpacity(0.25),
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Delivery Instruction",
                    style: theme.displaySmall,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: AppColor.pink,
                      ),
                      Text(
                        "Add Notes",
                        style: TextStyle(
                          color: AppColor.pink,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Sub Total",
                  style: theme.displaySmall,
                ),
              ),
              Text(
                "\$68",
                style: theme.displaySmall?.copyWith(
                  color: AppColor.pink,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Delivery Cost",
                  style: theme.displaySmall,
                ),
              ),
              Text(
                "\$2",
                style: theme.displaySmall?.copyWith(
                  color: AppColor.pink,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Divider(
            color: AppColor.placeholder.withOpacity(0.25),
            thickness: 1.5,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total",
                  style: theme.displaySmall,
                ),
              ),
              Text(
                "\$70",
                style: theme.displaySmall?.copyWith(
                  color: AppColor.pink,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCheckoutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(CheckoutScreen.routeName);
          },
          child: const Text("Checkout"),
        ),
      ),
    );
  }
