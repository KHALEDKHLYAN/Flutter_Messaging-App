// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:blog_app/components/app_texfiled.dart';
import 'package:blog_app/components/toolbar.dart';
import 'package:blog_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

import '../components/user_avatar.dart';
import '../config/app_strings.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: UserAvatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
                AppTextField(hint: AppStrings.firstName),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.lastName),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.phoneNumber),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.location),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.birthday),
                Radio(
                value: Gender.male,
                groupValue: gender,
                onChanged: (value) {},
              ),
              Radio(
                value: Gender.male,
                groupValue: gender,
                onChanged: (value) {},
              ),
              Radio(
                value: Gender.male,
                groupValue: gender,
                onChanged: (value) {},
              ),
              ],
              ),
        ),
      ),
    );
  }
}
