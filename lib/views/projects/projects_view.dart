import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp/providers/projects.dart';
import 'package:webapp/widgets/project_details/project_card_desktop.dart';
import 'package:webapp/widgets/project_details/project_card_mobile.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projects = Provider.of<Projects>(context).projects;
    return ScreenTypeLayout(
      mobile: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (ctx, index) => ProjectCardMobile(
          imagePath: projects[index].imagePath,
          title: projects[index].title,
          body: projects[index].body,
          onClick: () {},
        ),
      ),
      desktop: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (ctx, index) => ProjectCardDesktop(
          imagePath: projects[index].imagePath,
          title: projects[index].title,
          body: projects[index].body,
          onClick: () {},
        ),
      ),
    );
  }
}
