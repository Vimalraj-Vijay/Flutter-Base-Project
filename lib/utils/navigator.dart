import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void pushReplacementNamed(BuildContext context, String routeName) {
  Navigator.pushReplacementNamed(context, routeName);
}

void back() {
  SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
}
