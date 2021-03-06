import 'package:flutter/material.dart';
import 'package:webapp/constants/app_colors.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: darkPrimary,
        ),
      ),
      decoration: BoxDecoration(
        color: brightAccent,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
