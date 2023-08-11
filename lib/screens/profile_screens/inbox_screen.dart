import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/cards_design/mail_card.dart';
import 'package:food_delivery_app/widgets/navbar.dart';

class InboxScreen extends StatelessWidget {
  static const routeName = "/inboxScreen";

  InboxScreen({super.key});

  final List<MailCardContent> mailCards = [
    MailCardContent(
      title: "Meal Promotions",
      description:
          "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
      time: "6th July",
    ),
    MailCardContent(
      title: "Meal Promotions",
      description:
          "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
      time: "6th July",
      color: AppColor.placeholderBg,
    ),
    MailCardContent(
      title: "Meal Promotions",
      description:
          "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
      time: "6th July",
    ),
    MailCardContent(
      title: "Meal Promotions",
      description:
          "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
      time: "6th July",
      color: AppColor.placeholderBg,
    ),
    MailCardContent(
      title: "Meal Promotions",
      description:
          "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
      time: "6th July",
    ),
    MailCardContent(
      title: "Meal Promotions",
      description:
          "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
      time: "6th July",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
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
        "Inbox",
        style: SizeConfig.getTheme(context).headlineSmall,
      ),
      backgroundColor: Colors.white,
    );

    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Expanded(
                  child: ListView.builder(
                    itemCount: mailCards.length,
                    itemBuilder: (context, index) {
                      final card = mailCards[index];
                      return MailCard(
                        title: card.title,
                        description: card.description,
                        time: card.time,
                        color: card.color!,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(menu: true)),
        ],
      ),
    );
  }
}

class MailCardContent {
  final String title;
  final String description;
  final String time;
  final Color? color;

  MailCardContent({
    required this.title,
    required this.description,
    required this.time,
    this.color = Colors.white,
  });
}
