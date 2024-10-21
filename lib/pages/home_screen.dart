// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List catNames = [
    'Cat1',
    'Cat1',
    'Cat1',
    'Cat1',
    'Cat1',
    'Cat1',
  ];

  List<Color> catColors = [
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
    Color.fromARGB(255, 44, 40, 40),
  ];

  List<Icon> catIcons = [
    Icon(Icons.fiber_manual_record_rounded, color: Colors.white, size: 30),
    Icon(Icons.money, color: Colors.white, size: 30),
    Icon(Icons.lightbulb, color: Colors.white, size: 30),
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
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'เคเบิล',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 250),
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
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
