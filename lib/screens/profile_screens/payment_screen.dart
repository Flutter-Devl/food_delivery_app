import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/common_widgets/payment_widgets.dart';
import 'package:food_delivery_app/widgets/navbar.dart';

class PaymentScreen extends StatelessWidget {
  static const routeName = "/paymentScreen";

  const PaymentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        ),
        title: Text(
          "Payment Details",
          style: SizeConfig.getTheme(context).headlineSmall,
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildTitleSection(subTitle: "How would you like to pay ?"),
                buildCreditCard(
                    color: const Color(0xFF090943),
                    cardExpiration: "08/2022",
                    cardHolder: "HOUSSEM SELMI",
                    cardNumber: "3546 7532 XXXX 9742"),
                const SizedBox(height: 15),
                buildCreditCard(
                    color: const Color(0xFF000000),
                    cardExpiration: "05/2024",
                    cardHolder: "HOUSSEM SELMI",
                    cardNumber: "9874 4785 XXXX 6548"),
                const SizedBox(height: 20),
                bottomsheet(context),
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar()),
        ],
      ),
    );
  }
}
