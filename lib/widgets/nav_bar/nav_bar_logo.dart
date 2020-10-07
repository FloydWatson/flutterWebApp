import 'package:flutter/material.dart';
import 'package:webapp/locator.dart';
import 'package:webapp/services/nav_service.dart';

class NavBarLogo extends StatelessWidget {
  final String navigatePath;
  const NavBarLogo(this.navigatePath, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavService>().navigateTo(navigatePath);
      },
      child: CircleAvatar(
        radius: 60,
        // height: 80,
        // width: 150,
        backgroundImage: AssetImage('assets/kyal.png'),
      ),
    );
  }
}
