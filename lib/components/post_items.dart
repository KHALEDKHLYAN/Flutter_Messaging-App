// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../styles/app_text.dart';

class PostItems extends StatelessWidget {
  const PostItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/bao.png',
                width: 75,
                height: 75,
              ),
              SizedBox(
                width: 20,
              ),
              Text('Sara Farnandez', style: AppText.subtitle3,),
            ],
          ),
          SizedBox(height: 12,),
          Image.asset('assets/temp/caucasian.png', width: 200,),
          SizedBox(height: 12,),
          Text("Hitting the gym daily needs alot of displine and consistency", style: AppText.subtitle3,)
        ],
      ),
    );
  }
}