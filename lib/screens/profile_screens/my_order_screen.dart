import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/common_widgets/my_order_widgets.dart';
import 'package:food_delivery_app/widgets/navbar.dart';

class MyOrderScreen extends StatelessWidget {
  static const routeName = "/myOrderScreen";

  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = SizeConfig.getTheme(context);

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
          "My Order",
          style: theme.headlineSmall,
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                buildOrderDetails(context),
                const SizedBox(height: 30),
                buildBurgerCards(),
                buildDeliveryInfo(theme),
                const SizedBox(height: 20),
                buildCheckoutButton(context),
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar()),
        ],
      ),
    );
  }
}
