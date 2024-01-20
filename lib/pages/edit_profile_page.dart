// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blog_app/components/app_texfiled.dart';
import 'package:blog_app/components/toolbar.dart';
import 'package:flutter/material.dart';

import '../config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: Column(
        children: [
          AppTextField(hint: AppStrings.firstName),
          AppTextField(hint: AppStrings.lastName),
          AppTextField(hint: AppStrings.phoneNumber),
          AppTextField(hint: AppStrings.location),
        ],
      ),
    );
  }
}