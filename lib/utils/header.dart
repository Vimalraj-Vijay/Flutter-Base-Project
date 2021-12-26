import 'package:flutter/material.dart';
import 'package:init_str/utils/navigator.dart';

import 'color.dart';

class Header extends StatelessWidget {
  final String title;
  final String onBackPressRoute;

  const Header({
    Key? key,
    required this.title,
    required this.onBackPressRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => back(),
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        color: headerIconColor,
        
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
      backgroundColor: headerBg,
      elevation: 2,
      
      
    );
  }
}
