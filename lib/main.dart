import 'package:flutter/material.dart';
import 'package:init_str/splash_screen.dart';
import 'package:init_str/utils/color.dart';
import 'package:init_str/utils/routes.dart';
import 'package:init_str/utils/strings.dart';
import 'package:init_str/utils/text_theme.dart';

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
