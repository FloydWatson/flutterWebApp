import 'package:flutter/material.dart';
import 'package:webapp/routing/route_names.dart';
import 'package:webapp/widgets/nav_drawer/drawer_item.dart';
import 'package:webapp/widgets/nav_drawer/nav_drawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavDrawerHeader(),
          DrawerItem('Projects', Icons.code, ProjectsRoute),
          DrawerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
  }
}
