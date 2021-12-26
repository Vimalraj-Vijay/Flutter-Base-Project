import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:init_str/home/home.dart';
import 'package:init_str/utils/color.dart';
import 'package:init_str/utils/navigator.dart';
import 'package:init_str/utils/strings.dart';
import 'package:init_str/utils/text_theme.dart';

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
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splash_logo.png'),
                    fit: BoxFit.fill),
                shape: BoxShape.circle,
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
    pushReplacementNamed(context, Home.id);
  }
}