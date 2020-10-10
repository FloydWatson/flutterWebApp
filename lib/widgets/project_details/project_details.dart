import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:webapp/constants/app_colors.dart';

class ProjectDetails extends StatelessWidget {
  final String title;
  final String body;
  ProjectDetails(
      {Key key, @required this.title, @required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 32
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize, color: brightAccent),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              body,
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
                color: text
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
