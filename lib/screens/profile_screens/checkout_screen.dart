import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/cards_design/payment_card.dart';
import 'package:food_delivery_app/widgets/common_widgets/checkout_widgets.dart';
import 'package:food_delivery_app/widgets/common_widgets/payment_widgets.dart';
import 'package:food_delivery_app/widgets/navbar.dart';

class CheckoutScreen extends StatelessWidget {
  static const routeName = "/checkoutScreen";

  const CheckoutScreen({super.key});
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
          "Checkout",
          style: SizeConfig.getTheme(context).headlineSmall,
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Delivery Address"),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: SizeConfig.getScreenWidth(context) * 0.4,
                      child: Text(
                        "653 Nostrand Ave., Brooklyn, NY 11216",
                        style: SizeConfig.getTheme(context).displaySmall,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Change",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 10,
                width: double.infinity,
                color: AppColor.placeholderBg,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Payment method"),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          isScrollControlled: true,
                          isDismissible: false,
                          context: context,
                          builder: (context) {
                            return buildBottomSheetContent(context);
                          },
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.add),
                          Text(
                            "Add Card",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              PaymentCard(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Cash on delivery"),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(
                          side: BorderSide(color: AppColor.pink),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              PaymentCard(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                          child: Image.asset(
                            SizeConfig.getAssetName(
                              "visa2.png",
                              "real",
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("**** **** **** 2187"),
                      ],
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(
                          side: BorderSide(color: AppColor.pink),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 10,
                width: double.infinity,
                color: AppColor.placeholderBg,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Sub Total"),
                        Text(
                          "\$68",
                          style: SizeConfig.getTheme(context).displaySmall,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Delivery Cost"),
                        Text(
                          "\$2",
                          style: SizeConfig.getTheme(context).displaySmall,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Discount"),
                        Text(
                          "-\$4",
                          style: SizeConfig.getTheme(context).displaySmall,
                        )
                      ],
                    ),
                    Divider(
                      height: 40,
                      color: AppColor.placeholder.withOpacity(0.25),
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total"),
                        Text(
                          "\$66",
                          style: SizeConfig.getTheme(context).displaySmall,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                height: 10,
                width: double.infinity,
                color: AppColor.placeholderBg,
              ),
              const SizedBox(height: 20),
              const SuccessSheet(),
              const SizedBox(height: 20),
            ],
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar()),
        ],
      ),
    );
  }
}
