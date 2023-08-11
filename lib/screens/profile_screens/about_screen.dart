import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/cards_design/about_card.dart';
import 'package:food_delivery_app/widgets/navbar.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/aboutScreen";

  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "About Us",
          style: SizeConfig.getTheme(context).headlineSmall,
        ),
        backgroundColor: Colors.white,
      ),
      body: const Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Column(
                    children: [
                      AboutCard(),
                      SizedBox(height: 20),
                      AboutCard(),
                      SizedBox(height: 20),
                      AboutCard(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 0, left: 0, child: CustomNavBar(menu: true)),
        ],
      ),
    );
  }
}
