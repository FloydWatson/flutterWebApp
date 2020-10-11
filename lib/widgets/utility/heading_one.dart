import 'package:flutter/material.dart';

class HeadingOne extends StatelessWidget {
  
  final String heading;
  final Color color;

  HeadingOne(this.heading, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            heading,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontSize: 24,
              fontWeight: FontWeight.w600
            )
          ),
        );
  }
}