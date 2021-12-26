

import 'package:flutter/cupertino.dart';
import 'package:init_str/home/home.dart';
import 'package:init_str/splash_screen.dart';

Map<String,WidgetBuilder> initRoutes(){
  return {
    SplashScreen.id:(BuildContext ctx) => SplashScreen(),
    Home.id:(BuildContext ctx) => Home(),
  
  };
}