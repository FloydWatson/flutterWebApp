import 'package:flutter/material.dart';
import 'package:webapp/widgets/call_to_action/call_to_action.dart';
import 'package:webapp/widgets/project_details/project_details.dart';

class ProjectCardDesktop extends StatelessWidget {
  final String imagePath;
  final String title;
  final String body;
  final Function onClick;
  const ProjectCardDesktop(
      {Key key,
      @required this.imagePath,
      @required this.title,
      @required this.body,
      @required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ProjectDetails(title: title, body: body),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: CallToAction('SEE MORE'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
