import 'package:flutter/material.dart';
import 'package:flutter_project_base/splash_screen.dart';
import 'package:flutter_project_base/utils/header.dart';

class Home extends StatelessWidget {
  static var id = "/home";

  const Home({Key? key}) : super(key: key);

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
