import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
      required this.name,
      required this.count,
      required this.imageShape})
      : super(key: key);

  final String name;
  final String count;
  final Widget imageShape;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 80),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.placeholder,
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: SizeConfig.getTheme(context).headlineMedium?.copyWith(
                      color: AppColor.primary,
                    ),
              ),
              const SizedBox(height: 5),
              Text("$count items")
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(alignment: Alignment.centerLeft, child: imageShape),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: AppColor.placeholder,
                      offset: Offset(0, 2),
                      blurRadius: 5,
                    )
                  ]),
              child: Image.asset(
                SizeConfig.getAssetName("next_filled.png", "virtual"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
