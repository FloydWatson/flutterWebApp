import 'package:flutter/material.dart';
import 'package:webapp/locator.dart';
import 'package:webapp/services/nav_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigatePath;
  const NavBarItem(this.title, this.navigatePath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavService>().navigateTo(navigatePath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
