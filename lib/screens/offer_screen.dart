import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/cards_design/offer_card.dart';
import 'package:food_delivery_app/widgets/navbar.dart';

class OfferScreen extends StatelessWidget {
  static const routeName = "/offerScreen";

  const OfferScreen({super.key});
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
          "Latest Offers",
          style: SizeConfig.getTheme(context).headlineSmall,
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                OfferCard(
                  image: Image.asset(
                    SizeConfig.getAssetName("breakfast.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Cafe de Noires",
                ),
                OfferCard(
                  image: Image.asset(
                    SizeConfig.getAssetName("western2.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Isso",
                ),
                OfferCard(
                  image: Image.asset(
                    SizeConfig.getAssetName("coffee3.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Cafe Beans",
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(offer: true))
        ],
      ),
    );
  }
}
