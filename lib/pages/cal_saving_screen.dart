// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CalSavingScreen extends StatefulWidget {
  const CalSavingScreen({super.key});

  @override
  State<CalSavingScreen> createState() => _CalSavingScreenState();
}

class _CalSavingScreenState extends State<CalSavingScreen> {
  var saralyController;

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
          Row(
            children: [
              /*TextField(
                decoration: InputDecoration(labelText: 'ราคาสินค้า'),
                maxLength: 50,
                keyboardType: TextInputType.name,
                controller: saralyController,
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
