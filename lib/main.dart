import 'package:flutter/material.dart';
import 'package:flutter_project_base/splash_screen.dart';
import 'package:flutter_project_base/utils/color.dart';
import 'package:flutter_project_base/utils/routes.dart';
import 'package:flutter_project_base/utils/strings.dart';
import 'package:flutter_project_base/utils/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appHeaderName,
      theme: ThemeData(
        primarySwatch: primaryAppTheme,
        textTheme: textThemeing,
      ),
      initialRoute: SplashScreen.id,
      routes: initRoutes(),
    );
  }
}
