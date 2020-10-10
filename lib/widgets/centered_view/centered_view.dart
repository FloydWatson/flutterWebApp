import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        padding: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? EdgeInsets.symmetric(horizontal: 10, vertical: 10) : EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: child,
        ),
      ),
    );
  }
}
