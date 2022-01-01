import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_base/utils/navigator.dart';

import 'color.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleStyle = Text(
      title,
      style: Theme.of(context).textTheme.headline1,
    );
    var iconStyle = const Icon(
      Icons.arrow_back_ios_new_outlined,
      color: headerIconColor,
      size: 20,
    );
    return Platform.isAndroid
        ? AppBar(
            leading: IconButton(
              onPressed: () => back(),
              icon: iconStyle,
            ),
            title: titleStyle,
            backgroundColor: headerBg,
            elevation: 2,
          )
        : CupertinoNavigationBar(
            leading: GestureDetector(
              child: iconStyle,
              onTap: () => back(),
            ),
            middle: titleStyle,
            backgroundColor: headerBg,
          );
  }
}
