import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/home_screen.dart';

class SuccessSheet extends StatelessWidget {
  const SuccessSheet({super.key});

  void _onTrackOrderPressed(BuildContext context) {}

  void _onBackToHomePressed(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  Widget _buildSuccessContent(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.clear),
            ),
          ],
        ),
        Image.asset(
          SizeConfig.getAssetName("vector4.png", "virtual"),
        ),
        const SizedBox(height: 20),
        const Text(
          "Thank You!",
          style: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "for your order",
          style: SizeConfig.getTheme(context)
              .displaySmall
              ?.copyWith(color: AppColor.primary),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Your order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your order",
          ),
        ),
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => _onTrackOrderPressed(context),
              child: const Text("Track My Order"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextButton(
            onPressed: () => _onBackToHomePressed(context),
            child: const Text(
              "Back To Home",
              style: TextStyle(
                color: AppColor.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              isScrollControlled: true,
              isDismissible: false,
              context: context,
              builder: (context) => SizedBox(
                height: SizeConfig.getScreenHeight(context) * 0.8,
                child: _buildSuccessContent(context),
              ),
            );
          },
          child: const Text("Send Order"),
        ),
      ),
    );
  }
}
