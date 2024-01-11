// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botton Navigation bar'),
      ),
      body: Center(
        child: Text('Bottom Navigation Button'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.phone_android_sharp),
          label: 'phone',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_sharp),
          label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
