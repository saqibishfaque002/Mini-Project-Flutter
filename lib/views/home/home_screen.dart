import 'package:flutter/material.dart';
import 'package:mini_project/controller/HomeController.dart';

import '/constants/custom_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: homeContent(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          mainText: "Your holiday \nshopping \ndelivered to Screen \none",
          mainTextImg: 'assets/jpg_images/Emoji.jpg',
          subMainText:
              "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen One",
          tabLineClr: CustomColors.tabLineColor,
          tabLineWdt: 40,
          subTabLineClr: CustomColors.subTabLineColor,
          subTabLineWdt: 25,
          mainImage: 'assets/jpg_images/Image_Icon.jpg',
          navigateRouteScreen: '/home2',
        ),
      ),
    );
  }
}
