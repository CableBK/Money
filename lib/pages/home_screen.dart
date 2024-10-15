// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cable'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('แจ้งเตือน')));
            },
          ),
        ],
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.add)),
                IconButton(onPressed: null, icon: Icon(Icons.add)),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.add)),
                IconButton(onPressed: null, icon: Icon(Icons.add)),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.add)),
                IconButton(onPressed: null, icon: Icon(Icons.add)),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.add)),
                IconButton(onPressed: null, icon: Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
