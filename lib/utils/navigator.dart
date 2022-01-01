import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void pushReplacementNamed(BuildContext context, String routeName) {
  Navigator.pushReplacementNamed(context, routeName);
}

void back() {
  Platform.isIOS
      ? exit(0)
      : SystemChannels.platform.invokeMethod('SystemNavigator.pop');
}
