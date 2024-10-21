import 'package:flutter/material.dart';
import 'package:money/pages/cal_saving_screen.dart';
import 'package:money/pages/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money',
      home: HomeScreen(),
    );
  }
}
