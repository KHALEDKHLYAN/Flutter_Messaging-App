// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blog_app/styles/app_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/temp/user1.png',
            width: 200,
            height: 200,
          ),
          Text('Khaled Khlyan', style: AppText.header2),
          Text(
            'Mombasa 001',
            style: AppText.subtitle2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('47,590', style: AppText.header2),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text('158', style: AppText.header2),
                  Text('Post'),
                ],
              ),
              Column(
                children: [
                  Text('850', style: AppText.header2),
                  Text('Following'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
