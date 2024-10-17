// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List catNames = [
    'Cat1',
    'Cat1',
    'Cat1',
    'Cat1',
    'Cat1',
    'Cat1',
  ];

  static List<Color> catColors = [
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
  ];

  static List<Icon> catIcons = [
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.category, color: Colors.white, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.account_box,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                    itemCount: catNames.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 1.1),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: catColors[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                        ],
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
