import 'package:flutter/material.dart';
import 'package:init_str/splash_screen.dart';
import 'package:init_str/utils/header.dart';

class Home extends StatelessWidget {
  static var id = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Header(title: "Home Page", onBackPressRoute: SplashScreen.id),
            Text("Welcome to Home Page "),
          ],
        ),
      ),
    );
  }
}
