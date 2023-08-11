import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/screen_config.dart';
import 'package:food_delivery_app/widgets/text_field.dart';

Padding buildTitleSection({required subTitle}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
    child: Text(
      '$subTitle',
      style: const TextStyle(fontSize: 21, color: Colors.black45),
    ),
  );
}

Card buildCreditCard(
    {required Color color,
    required String cardNumber,
    required String cardHolder,
    required String cardExpiration}) {
  return Card(
    elevation: 4.0,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    child: Container(
      height: 200,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildLogosBlock(),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              cardNumber,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontFamily: 'CourrierPrime'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildDetailsBlock(
                label: 'CARDHOLDER',
                value: cardHolder,
              ),
              buildDetailsBlock(label: 'VALID THRU', value: cardExpiration),
            ],
          ),
        ],
      ),
    ),
  );
}

Row buildLogosBlock() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Image.asset(
        "assets/images/contact_less.png",
        height: 20,
        width: 18,
      ),
      Image.asset(
        "assets/images/mastercard.png",
        height: 50,
        width: 50,
      ),
    ],
  );
}

Column buildDetailsBlock({required String label, required String value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold),
      ),
      Text(
        value,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      )
    ],
  );
}

Widget bottomsheet(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    height: 60,
    child: ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          isScrollControlled: true,
          isDismissible: false,
          context: context,
          builder: (context) {
            return buildBottomSheetContent(context);
          },
        );
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add),
          Text("Add Another Credit/Debit Card"),
        ],
      ),
    ),
  );
}

Widget buildBottomSheetContent(BuildContext context) {
  return SizedBox(
    height: SizeConfig.getScreenHeight(context) * 0.7,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.clear),
            )
          ],
        ),
        buildHeaderText(context, "Add Credit/Debit Card"),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: CustomTextInput(hintText: "card Number"),
        ),
        const SizedBox(height: 20),
        buildExpiryRow(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomTextInput(hintText: "Security Code"),
        ),
        const SizedBox(height: 20),
        buildNameInputs(),
        const SizedBox(height: 30),
        buildAddCardButton(context),
      ],
    ),
  );
}

Widget buildHeaderText(BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      children: [
        Text(
          text,
          style: SizeConfig.getTheme(context).displaySmall,
        ),
      ],
    ),
  );
}

Widget buildDivider(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Divider(
      color: AppColor.placeholder.withOpacity(0.5),
      thickness: 1.5,
      height: 40,
    ),
  );
}

Widget buildExpiryRow() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Expiry"),
        SizedBox(
          height: 50,
          width: 100,
          child: CustomTextInput(
            hintText: "MM",
            padding: EdgeInsets.only(left: 35),
          ),
        ),
        SizedBox(
          height: 50,
          width: 100,
          child: CustomTextInput(
            hintText: "YY",
          ),
        ),
      ],
    ),
  );
}

Widget buildNameInputs() {
  return const Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomTextInput(hintText: "First Name"),
      ),
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomTextInput(hintText: "Last Name"),
      ),
    ],
  );
}

Widget buildAddCardButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.of(context).pop();
        },
        label: const Text("Add Card"),
        icon: const Icon(Icons.add),
      ),
    ),
  );
}
