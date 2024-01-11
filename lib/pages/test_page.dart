// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final int count = 3;
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flotting Button"),
      ),
      body: Center(
        child: Text('This is Counter $count', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 35),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),),
    );
  }
}
