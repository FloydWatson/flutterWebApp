import 'package:flutter/material.dart';
import 'package:webapp/models/project.dart';

class Projects with ChangeNotifier {
  ProjectList projectList = ProjectList.fromJson({
    "projects": [
      {
        "title": "Welly Wood",
        "body":
            "Sweet app for taking photos around wellington. \nThis is a mobile application developed in both flutter and kotlin!",
        "imagePath": "assets/basicBackground.jpg",
        "gitLink": "https://github.com/kyalbond/wellywood",
        "liveLink": ""
      },
      {
        "title": "Smart Eldercare",
        "body":
            "An app designed to make care of elderly more efficent. \ncurrent infrastructure of the industry needs a large overhauls to be brought into the 21st century. \nThis app is a conceptual look at what this overhaul could achieve!",
        "imagePath": "assets/basicBackground.jpg",
        "gitLink": "https://github.com/kyalbond/smart-eldercare",
        "liveLink": ""
      },
      {
        "title": "LookBook",
        "body":
            "Absolutely no idea what this app is. \nBut its probably a better idea to have this instead of a app called Harambes Second Coming within you portfolio.",
        "imagePath": "assets/basicBackground.jpg",
        "gitLink": "https://github.com/kyalbond/lookbook-ionic",
        "liveLink": ""
      },
    ]
  });

  List<Project> get projects{
    return this.projectList.projects;
  }


}

class ProjectList {
  List<Project> projects;

  ProjectList({this.projects});

  ProjectList.fromJson(Map<String, dynamic> json) {
    if (json['projects'] != null) {
      projects = new List<Project>();
      json['projects'].forEach((v) {
        projects.add(new Project.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.projects != null) {
      data['projects'] = this.projects.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
