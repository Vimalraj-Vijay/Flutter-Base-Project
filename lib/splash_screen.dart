import 'package:flutter/material.dart';
import 'package:flutter_project_base/home/home.dart';
import 'package:flutter_project_base/login/login_view.dart';
import 'package:flutter_project_base/utils/color.dart';
import 'package:flutter_project_base/utils/navigator.dart';
import 'package:flutter_project_base/utils/strings.dart';
import 'package:flutter_project_base/utils/text_theme.dart';

class SplashScreen extends StatefulWidget {
  static var id = "/splash";
  static int splashTimeOutInMilliSeconds = 3000;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splash_logo.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Text(
              appHeaderName,
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                color: primaryAppTheme,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToNext() async {
    await Future.delayed(
      Duration(
        milliseconds: SplashScreen.splashTimeOutInMilliSeconds,
      ),
    );
    pushReplacementNamed(context, LoginView.id);
  }
}
