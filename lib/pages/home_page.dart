// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:blog_app/components/post_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/toolbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: "5minuteFlutter",
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/svg/ic_location.svg'),)
        ],
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
