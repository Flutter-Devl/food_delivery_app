import 'package:clip_shadowx/clip_shadowx.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/home_screen.dart';
import 'package:food_delivery_app/screens/menu_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/more_screen.dart';
import 'package:food_delivery_app/screens/offer_screen.dart';
import 'package:food_delivery_app/screens/profile_screen.dart';
import 'package:food_delivery_app/widgets/clippers/navbar_clipper.dart';

class CustomNavBar extends StatelessWidget {
  final bool home;
  final bool menu;
  final bool offer;
  final bool profile;
  final bool more;

  const CustomNavBar({
    Key? key,
    this.home = false,
    this.menu = false,
    this.offer = false,
    this.profile = false,
    this.more = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: SizeConfig.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipShadow(
              shadows: const [
                BoxShadow(
                  color: AppColor.placeholder,
                  offset: Offset(0, -5),
                  blurRadius: 10,
                ),
              ],
              clipper: CustomNavBarClipper(),
              child: buildNavigationBar(context),
            ),
          ),
          buildFloatingActionButton(context),
        ],
      ),
    );
  }

  Widget buildNavigationBar(BuildContext context) {
    return Container(
      height: 80,
      width: SizeConfig.getScreenWidth(context),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildNavItem(context, "more.png", "more_filled.png", "Menu",
              MenuScreen.routeName, menu),
          buildNavItem(context, "bag.png", "bag_filled.png", "Offers",
              OfferScreen.routeName, offer),
          const SizedBox(width: 20),
          buildNavItem(context, "user.png", "user_filled.png", "Profile",
              ProfileScreen.routeName, profile),
          buildNavItem(context, "menu.png", "menu_filled.png", "More",
              MoreScreen.routeName, more),
        ],
      ),
    );
  }

  Widget buildNavItem(BuildContext context, String icon, String filledIcon,
      String label, String routeName, bool isSelected) {
    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          Navigator.of(context).pushReplacementNamed(routeName);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isSelected
              ? Image.asset(SizeConfig.getAssetName(filledIcon, "virtual"))
              : Image.asset(SizeConfig.getAssetName(icon, "virtual")),
          isSelected
              ? Text(label, style: const TextStyle(color: AppColor.pink))
              : Text(label),
        ],
      ),
    );
  }

  Widget buildFloatingActionButton(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: home ? AppColor.pink : AppColor.placeholder,
          onPressed: () {
            if (!home) {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            }
          },
          child:
              Image.asset(SizeConfig.getAssetName("home_white.png", "virtual")),
        ),
      ),
    );
  }
}
