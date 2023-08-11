import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/screens/profile_screens/checkout_screen.dart';
import 'package:food_delivery_app/screens/forgot_password_screen.dart';
import 'package:food_delivery_app/screens/home_screen.dart';
import 'package:food_delivery_app/screens/introduction_screen.dart';
import 'package:food_delivery_app/screens/landing_screen.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/screens/menu_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/more_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/my_order_screen.dart';
import 'package:food_delivery_app/screens/new_password_screen.dart';
import 'package:food_delivery_app/screens/offer_screen.dart';
import 'package:food_delivery_app/screens/otp_screen.dart';
import 'package:food_delivery_app/screens/profile_screens/payment_screen.dart';
import 'package:food_delivery_app/screens/profile_screen.dart';
import 'package:food_delivery_app/screens/sign_up_screen.dart';
import 'package:food_delivery_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.pink),
            shape: MaterialStateProperty.all(const StadiumBorder()),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(AppColor.pink),
          ),
        ),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headlineSmall: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          titleLarge: TextStyle(color: AppColor.primary, fontSize: 25),
          bodyMedium: TextStyle(color: AppColor.secondary),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => const LandingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        ForgetPwScreen.routeName: (context) => const ForgetPwScreen(),
        SendOTPScreen.routeName: (context) => const SendOTPScreen(),
        NewPwScreen.routeName: (context) => const NewPwScreen(),
        IntroScreen.routeName: (context) => const IntroScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        MenuScreen.routeName: (context) => const MenuScreen(),
        OfferScreen.routeName: (context) => const OfferScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        MoreScreen.routeName: (context) => MoreScreen(),
        PaymentScreen.routeName: (context) => const PaymentScreen(),
        MyOrderScreen.routeName: (context) => const MyOrderScreen(),
        CheckoutScreen.routeName: (context) => const CheckoutScreen(),
      },
    );
  }
}
