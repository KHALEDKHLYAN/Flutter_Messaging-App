// ignore_for_file: prefer_const_constructors

import 'package:blog_app/pages/nearby_page.dart';

import '../pages/edit_profile_page.dart';
import '../pages/home_page.dart';
import '../pages/login_reg.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static final pages = {
    login : (context) => LoginRegisterPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile : (context) => EditProfilePage(),
    nearby : (context) => NearbyPAge(),

  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
