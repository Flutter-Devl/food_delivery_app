import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/navbar.dart';
import 'package:food_delivery_app/widgets/cards_design/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = "/notiScreen";

  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationData = [
      {
        'title': "Your order has been picked up",
        'time': "Now",
        'color': Colors.white,
      },
      {
        'title': "Your order has been delivered",
        'time': "1 h ago",
        'color': AppColor.placeholderBg,
      },
      {
        'title': "Lorem ipsum dolor sit amet, consectetur",
        'time': "3 h ago",
        'color': Colors.white,
      },
      {
        'title': "Lorem ipsum dolor sit amet, consectetur",
        'time': "5 h ago",
        'color': Colors.white,
      },
      {
        'title': "Lorem ipsum dolor sit amet, consectetur",
        'time': "05 Sep 2020",
        'color': AppColor.placeholderBg,
      },
      {
        'title': "Lorem ipsum dolor sit amet, consectetur",
        'time': "12 Aug 2020",
        'color': AppColor.placeholderBg,
      },
      {
        'title': "Lorem ipsum dolor sit amet, consectetur",
        'time': "20 Jul 2020",
        'color': Colors.white,
      },
      {
        'title': "Lorem ipsum dolor sit amet, consectetur",
        'time': "12 Jul 2020",
        'color': Colors.white,
      },
    ];

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
          "Notifications",
          style: SizeConfig.getTheme(context).headlineSmall,
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.separated(
                    itemCount: notificationData.length,
                    itemBuilder: (context, index) {
                      final data = notificationData[index];
                      return NotiCard(
                        title: data['title'].toString(),
                        time: data['time'].toString(),
                        color: data['color'] as Color,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 10);
                    },
                  ),
                ),
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(menu: true))
        ],
      ),
    );
  }
}
