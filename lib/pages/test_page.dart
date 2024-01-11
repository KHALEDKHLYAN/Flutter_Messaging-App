// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
   int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flotting Button"),
      ),
      body: Center(
        child: Text(
          'This is Counter. $count',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
