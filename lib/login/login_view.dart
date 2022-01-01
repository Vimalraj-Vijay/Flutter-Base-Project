import 'package:flutter/material.dart';
import 'package:flutter_project_base/login/login_body.dart';
import 'package:flutter_project_base/utils/color.dart';

class LoginView extends StatefulWidget {
  static var id = "/login";
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bodyTextColor,
      body: SafeArea(
        child: LoginBody(),
        bottom: false,
      ),
    );
  }
}
