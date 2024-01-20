// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blog_app/config/app_icons.dart';
import 'package:blog_app/pages/home_page.dart';
import 'package:blog_app/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/app_strings.dart';

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
            icon: SvgPicture.asset(AppIcons.icHome),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icFavorite),
            label: AppStrings.favorites,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icAdd),
            label: AppStrings.add,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icMessage),
            label: AppStrings.messages,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icUser),
            label: AppStrings.user,
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
    Center(
      child: Text(AppStrings.favorites),
    ),
    Center(
      child: Text(AppStrings.add),
    ),
    Center(
      child: Text(AppStrings.messages),
    ),
    ProfilePage(),
  ];
}
