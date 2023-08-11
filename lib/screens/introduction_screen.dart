// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/screens/home_screen.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = "/introScreen";

  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late PageController _controller;
  int _currentPageIndex = 0;
  final List<Map<String, String>> _pages = [
    {
      "image": "vector1.png",
      "title": "Find Food You Love",
      "desc":
          "Discover the best foods from restaurants and fast delivery to your doorstep",
    },
    {
      "image": "vector2.png",
      "title": "Fast Delivery",
      "desc": "Fast food delivery to your home, office wherever you are",
    },
    {
      "image": "vector3.png",
      "title": "Live Tracking",
      "desc":
          "Real time tracking of your food on the app once you placed the order",
    },
  ];

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      _currentPageIndex = value;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      SizeConfig.getAssetName(
                          _pages[index]["image"]!, "virtual"),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pages.length,
                  (index) => CircleAvatar(
                    radius: 5,
                    backgroundColor: _currentPageIndex == index
                        ? AppColor.pink
                        : AppColor.placeholder,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                _pages[_currentPageIndex]["title"]!,
                style: SizeConfig.getTheme(context).titleLarge,
              ),
              const Spacer(),
              Text(
                _pages[_currentPageIndex]["desc"]!,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routeName);
                  },
                  child: const Text("Next"),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
