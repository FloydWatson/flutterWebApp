import 'package:flutter/material.dart';

class HeadingTwo extends StatelessWidget {
  
  final String heading;
  final Color color;

  HeadingTwo(this.heading, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            heading,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w600
            )
          ),
        );
  }
}