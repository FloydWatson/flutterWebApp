import 'package:flutter/material.dart';
import 'package:webapp/widgets/project_details/project_card_mobile.dart';


class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisSize: MainAxisSize.max,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         ProjectCardMobile(
          imagePath: 'assets/basicBackground.jpg',
          title: 'Wellywood',
          body:
              'Sweet app for taking photos around wellington. \nThis is a mobile application developed in both flutter and kotlin!',
          onClick: () {},
        ),
        ProjectCardMobile(
          imagePath: 'assets/basicBackground.jpg',
          title: 'Smart Eldercare',
          body:
              'An app designed to make care of elderly more efficent. \ncurrent infrastructure of the industry needs a large overhauls to be brought into the 21st century. \nThis app is a conceptual look at what this overhaul could achieve!',
          onClick: () {},
        ),
        ProjectCardMobile(
          imagePath: 'assets/basicBackground.jpg',
          title: 'Lookbook',
          body:
              'Absolutely no idea what this app is. \nBut its probably a better idea to have this instead of a app called Harambes Second Coming within you portfolio.',
          onClick: () {},
        ),
      ],
    );
  }
}