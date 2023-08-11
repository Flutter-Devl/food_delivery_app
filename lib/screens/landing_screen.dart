import 'package:clip_shadowx/clip_shadowx.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/widgets/clippers/appbar_clipper.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = "/landingScreen";

  const LandingScreen({super.key});

  Widget _imageWithShadow(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ClipShadow(
        clipper: CustomClipperAppBar(),
        shadows: const [
          BoxShadow(
            color: AppColor.placeholder,
            offset: Offset(0, 15),
            blurRadius: 10,
          ),
        ],
        child: Container(
          width: double.infinity,
          height: SizeConfig.getScreenHeight(context) * 0.5,
          decoration: ShapeDecoration(
            color: AppColor.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Image.asset(
            SizeConfig.getAssetName("login_bg.png", "virtual"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _centerLogo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        SizeConfig.getAssetName("logo.png", "virtual"),
        width: 300,
        height: 300,
      ),
    );
  }

  Widget _bottomContainer(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: SizeConfig.getScreenHeight(context) * 0.3,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Flexible(
              child: Text(
                "Foodie Favorites, Delivered Fast",
                textAlign: TextAlign.center,
                style: SizeConfig.getTheme(context).headlineSmall,
              ),
            ),
            const Spacer(flex: 2),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: Text(
                  "Login",
                  style: SizeConfig.getTheme(context)
                      .headlineSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = SizeConfig.getScreenWidth(context);
    final screenHeight = SizeConfig.getScreenHeight(context);

    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            _imageWithShadow(context),
            _centerLogo(context),
            _bottomContainer(context),
          ],
        ),
      ),
    );
  }
}
