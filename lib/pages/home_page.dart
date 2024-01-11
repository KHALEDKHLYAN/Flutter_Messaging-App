// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blog_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

import '../components/post_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 7.1,
        title: Text('5minutesFlutter'),
        actions: [
          Icon(Icons.location_on_outlined),
        ],
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }
  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];

    for (var i = 0; i < 1000; i++) {
      users.add(PostItems());
    }
    return users;
  }
}
