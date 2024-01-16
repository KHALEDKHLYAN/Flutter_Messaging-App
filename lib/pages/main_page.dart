// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blog_app/pages/home_page.dart';
import 'package:blog_app/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_add.svg'),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
            label: 'message',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_user.svg'),
            label: 'user',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
  final pages = [
    HomePage(),
    Center( child: Text('Favorite'),),
    Center( child: Text('add'),),
    Center( child: Text('message'),),
    ProfilePage(),
  ];
}
