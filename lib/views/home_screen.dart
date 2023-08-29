import 'package:flutter/material.dart';
import 'package:mini_project/constants/custom_colors.dart';

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
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color: CustomColors.maineColor,
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: screenWidth,
                    child: Text(
                      "Your holiday \nshopping \ndelivered to Screen \none",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        color: CustomColors.fontColor,
                        height: 1.3
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: screenWidth,
                    child: Text(
                      "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 1",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          color: CustomColors.subfontColor,
                          height: 1.2),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: screenWidth,
                    // color: Colors.black12,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: CustomColors.tabLineColor,
                                  spreadRadius: 2),
                            ],
                          ),
                          width: 40,
                          height: 1,
                        ),
                        SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: CustomColors.subTabLineColor,
                                  spreadRadius: 2),
                            ],
                          ),
                          width: 25,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: screenWidth,
                    // color: Colors.amber,
                    child: Image(
                        image: AssetImage('assets/jpg_images/Image_Icon.jpg')),
                  ),
                  Container(
                    height: 50,
                    width: screenWidth,
                    // color: Colors.amber
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context, 
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Warning !"),
                              content: Text("Thank you for coming, \nNext page is working in progress.\n "),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }, 
                                  child: Text(
                                    "Closed",
                                    style: TextStyle(
                                      color: CustomColors.btnTextColor,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Get Started', 
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w600,
                                color: CustomColors.btnTextColor,
                                height: 1.3),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            size: 24.0,
                            color: CustomColors.btnTextColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
