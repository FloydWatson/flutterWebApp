import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp/locator.dart';
import 'package:webapp/routing/route_names.dart';
import 'package:webapp/routing/router.dart';
import 'package:webapp/services/nav_service.dart';
import 'package:webapp/widgets/centered_view/centered_view.dart';
import 'package:webapp/widgets/nav_bar/nav_bar.dart';
import 'package:webapp/widgets/nav_drawer/nav_drawer.dart';

import 'package:webapp/constants/app_colors.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavDrawer()
            : null,
        backgroundColor: darkPrimary,
        body: CenteredView(
          child: Container(
            color: lightPrimary,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: <Widget>[
                  NavBar(),
                  Expanded(
                    child: Navigator(
                      key: locator<NavService>().navigatorKey,
                      onGenerateRoute: generateRoute,
                      initialRoute: HomeRoute,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
