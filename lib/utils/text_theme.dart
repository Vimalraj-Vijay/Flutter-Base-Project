import 'package:flutter/material.dart';
import 'package:init_str/utils/color.dart';

var fontFamily = 'Cabin';

TextTheme get textThemeing {
  TextTheme textStyling = TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
        fontStyle: FontStyle.italic,
        fontSize: 20,
        color: headerTextColor),
    subtitle1: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
        color: headerTextColor),
    bodyText1: TextStyle(
        fontWeight: FontWeight.w200,
        fontFamily: fontFamily,
        color: bodyTextColor),
  );
  return textStyling;
}
