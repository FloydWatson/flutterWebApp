import 'package:flutter/material.dart';
import 'package:webapp/widgets/call_to_action/call_to_action.dart';
import 'package:webapp/widgets/project_details/project_details.dart';

class ProjectCardMobile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String body;
  final Function onClick;
  const ProjectCardMobile(
      {Key key,
      @required this.imagePath,
      @required this.title,
      @required this.body,
      @required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
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
            padding: const EdgeInsets.all(4),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                                  child: Container(
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: ProjectDetails(title: title, body: body),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                CallToAction('SEE MORE'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
