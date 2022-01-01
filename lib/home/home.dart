import 'package:flutter/material.dart';
import 'package:flutter_project_base/utils/header.dart';
import 'package:flutter_project_base/utils/strings.dart';

class Home extends StatelessWidget {
  static var id = "/home";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: const [
            Header(
              title: homePageHeaderTitle,
            ),
            Text("Welcome to Home Page "),
          ],
        ),
      ),
    );
  }
}
