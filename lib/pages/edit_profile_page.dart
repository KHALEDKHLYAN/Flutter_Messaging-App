// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables
import 'package:blog_app/components/app_texfiled.dart';
import 'package:blog_app/components/toolbar.dart';
import 'package:blog_app/styles/app_colors.dart';
import 'package:blog_app/styles/app_text.dart';
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
              AppTextField(hint: AppStrings.birthday),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.gender,
                      style: AppText.body1.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text(AppStrings.male),
                            visualDensity: VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            value: Gender.male,
                            groupValue: gender,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text(AppStrings.female),
                            visualDensity: VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            value: Gender.female,
                            groupValue: gender,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text(AppStrings.other),
                            visualDensity: VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            value: Gender.other,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
