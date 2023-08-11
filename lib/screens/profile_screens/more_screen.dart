import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/profile_screens/about_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/inbox_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/my_order_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/notification_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/payment_screen.dart';
import 'package:food_delivery_app/widgets/cards_design/more_card.dart';
import 'package:food_delivery_app/widgets/navbar.dart';

class MoreScreen extends StatelessWidget {
  static const routeName = "/moreScreen";

  MoreScreen({super.key});

  final List<MoreCardData> moreCards = [
    MoreCardData(
      image: "income.png",
      name: "Payment Details",
      routeName: PaymentScreen.routeName,
    ),
    MoreCardData(
      image: "shopping_bag.png",
      name: "My Orders",
      routeName: MyOrderScreen.routeName,
    ),
    MoreCardData(
      image: "noti.png",
      name: "Notifications",
      routeName: NotificationScreen.routeName,
      isNoti: true,
    ),
    MoreCardData(
      image: "mail.png",
      name: "Inbox",
      routeName: InboxScreen.routeName,
    ),
    MoreCardData(
      image: "info.png",
      name: "About Us",
      routeName: AboutScreen.routeName,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
          style: SizeConfig.getTheme(context).headlineSmall,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: moreCards.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                MoreCard(
                                  image: Image.asset(
                                    SizeConfig.getAssetName(
                                      moreCards[index].image,
                                      "virtual",
                                    ),
                                  ),
                                  name: moreCards[index].name,
                                  isNoti: moreCards[index].isNoti,
                                  handler: () {
                                    Navigator.of(context).pushNamed(
                                      moreCards[index].routeName,
                                    );
                                  },
                                ),
                                const SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(more: true))
        ],
      ),
    );
  }
}

class MoreCardData {
  final String image;
  final String name;
  final String routeName;
  final bool isNoti;

  MoreCardData({
    required this.image,
    required this.name,
    required this.routeName,
    this.isNoti = false,
  });
}
