// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:blog_app/components/post_items.dart';
import 'package:blog_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
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
      body: ListView.builder(itemBuilder: (context, index) {
        return PostItems();
      }),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 1000; i++) {
      users.add('User Number $i');
    }
  }
}
