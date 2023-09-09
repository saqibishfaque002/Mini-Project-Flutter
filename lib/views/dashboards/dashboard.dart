import 'package:flutter/material.dart';
import 'package:mini_project/constants/custom_colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          color: CustomColors.dashboardBackgroud,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: CustomColors.maineColor,
                ),
                width: screenWidth,
                height: screenHeight * 0.3,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Hey, Saqib",
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            color: CustomColors.btnBGColor,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.shopping_bag_rounded,
                            size: 24.0,
                            color: CustomColors.btnTextColor,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
