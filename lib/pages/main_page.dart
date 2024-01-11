// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
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
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_sharp),
          label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_rounded),
          label: 'add',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index){
          setState((){
            currentIndex = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
