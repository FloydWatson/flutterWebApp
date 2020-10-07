import 'package:flutter/material.dart';
import 'package:webapp/routing/route_names.dart';
import 'package:webapp/widgets/nav_bar/nav_bar_item.dart';
import 'package:webapp/widgets/nav_bar/nav_bar_logo.dart';



class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(HomeRoute),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Projects', ProjectsRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}