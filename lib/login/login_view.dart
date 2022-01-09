import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_base/login/login_with_mobile.dart';
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
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.red,
            elevation: 0.0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          preferredSize: const Size.fromHeight(0.0)),
      body: const SingleChildScrollView(
        child: LoginWithMobile(),
      ),
    );
  }
}
