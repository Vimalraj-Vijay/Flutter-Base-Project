import 'package:flutter/cupertino.dart';
import 'package:flutter_project_base/home/home.dart';
import 'package:flutter_project_base/login/login_view.dart';
import 'package:flutter_project_base/splash_screen.dart';

Map<String,WidgetBuilder> initRoutes(){
  return {
    SplashScreen.id:(BuildContext ctx) => SplashScreen(),
    Home.id:(BuildContext ctx) => const Home(),
    LoginView.id:(BuildContext ctx) => const LoginView(),
  };
}