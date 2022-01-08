import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project_base/utils/color.dart';

var fontFamily = 'Cabin';

TextTheme get textThemeing {
  TextTheme textStyling = TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
        fontSize: 20,
        color: headerTextColor),
    subtitle1: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
        color: headerTextColor),
    bodyText1: TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: fontFamily,
        color: bodyTextColor),
    bodyText2: TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        color: bodyTextColor),
  );
  return textStyling;
}

var textFieldStyle = TextStyle(
    fontWeight: FontWeight.w700, fontFamily: fontFamily, color: bodyTextColor);
var textStyleRegular = TextStyle(
    fontWeight: FontWeight.normal,
    fontFamily: fontFamily,
    color: bodyTextColor,
    fontSize: 18.0);
