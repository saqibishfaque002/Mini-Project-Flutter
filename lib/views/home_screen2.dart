import 'package:flutter/material.dart';
import 'package:mini_project/controller/HomeController.dart';

import '../constants/custom_colors.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: homeContent(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          mainText: "Your holiday \nshopping delivered to Screen \ntwo",
          mainTextImg: 'assets/jpg_images/Emoji.jpg',
          subMainText:
              "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen Two",
          tabLineClr: CustomColors.subTabLineColor,
          tabLineWdt: 25,
          subTabLineClr: CustomColors.tabLineColor,
          subTabLineWdt: 40,
          mainImage: 'assets/jpg_images/Image_Icon.jpg',
        ),
      ),
    );
  }
}
