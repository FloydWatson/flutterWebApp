import 'package:flutter/material.dart';
import 'package:webapp/locator.dart';
import 'package:webapp/services/nav_service.dart';


import 'package:webapp/constants/app_colors.dart';

class DrawerNavItem extends StatelessWidget {
  final String title;
  final String navigatePath;
  const DrawerNavItem(this.title, this.navigatePath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        locator<NavService>().navigateTo(navigatePath);
        
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: brightAccent),
      ),
    );
  }
}