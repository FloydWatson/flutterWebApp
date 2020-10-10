import 'package:flutter/material.dart';
import 'package:webapp/views/layout_template/layout_template.dart';

import 'locator.dart';


import 'package:webapp/constants/app_colors.dart';

void main() {
  setupLocator();
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
        cursorColor: darkAccent,
        accentColor: brightAccent,
        primaryColor: lightPrimary,
        // to set app drawer icon color
        iconTheme: IconThemeData(color: brightAccent)
      ),
      home: LayoutTemplate(),
    );
  }
}
