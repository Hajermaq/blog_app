import 'package:blog_app_xd/LogInSignUpScreen.dart';
import 'package:blog_app_xd/detail_screen.dart';
import 'package:blog_app_xd/home_screen.dart';
import 'package:blog_app_xd/login_light_screen.dart';
import 'package:flutter/material.dart';

import 'create_account_light_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
