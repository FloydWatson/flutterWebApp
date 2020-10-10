import 'package:flutter/material.dart';
import 'package:webapp/constants/app_colors.dart';


import 'package:webapp/constants/app_colors.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: darkPrimary,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Kyal Bond Portfolio',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: brightAccent,
            ),
          ),
          
        ],
      ),
    );
  }
}