import 'package:flutter/material.dart';
import 'package:foodapp/app/routes/router.dart';
import 'package:foodapp/app/view/homepage/home_main_screen.dart';

import 'package:foodapp/app/view/intro/intro_screen.dart';
import 'package:foodapp/app/view/login/login_screen.dart';
import 'package:foodapp/app/view/login/signup_screen.dart';
import 'package:foodapp/app/view/login/verify_screen.dart';

class AppPages {
  static const initialRoute = Routes.homeRoute;
  static Map<String, WidgetBuilder> routes = {
      Routes.homeRoute: (context) => const Introscreen(),
      Routes.loginRoute: (context) => const Loginscreen(),
      Routes.registerRoute: (context) => const SignUpScreen(),
      Routes.verifyRoute: (context) => const Verifyscreen(),
      Routes.homepageRoute: (context) => const  Homemainscreen(),
  };
}