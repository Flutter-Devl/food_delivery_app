// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    timer = Timer(const Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: SizeConfig.getScreenWidth(context),
        height: SizeConfig.getScreenHeight(context),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                SizeConfig.getAssetName("splashIcon.png", "virtual"),
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                SizeConfig.getAssetName("logo.png", "virtual"),
                width: 300,
                height: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
