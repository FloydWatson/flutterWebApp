import 'package:flutter/material.dart';
import 'package:webapp/constants/app_colors.dart';
import 'package:webapp/widgets/centered_view/centered_view.dart';
import 'package:webapp/widgets/utility/heading_one.dart';
import 'package:webapp/widgets/utility/heading_three.dart';
import 'package:webapp/widgets/utility/heading_two.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listText = "hello";
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Container(
          child: SingleChildScrollView(
            child: CenteredView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeadingOne('Kyal Bond', brightAccent),
                  SizedBox(height: 25),
                  CustomDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo('Contact Details', brightAccent),
                      Spacer(),
                      Container(
                        width: 200,
                        child: Column(
                          children: [
                            Row(children: [
                              Spacer(),
                              Text(
                                'kyalbond@gmail.com',
                                style: TextStyle(color: text),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.mail)
                            ]),
                            Row(children: [
                              Spacer(),
                              Text(
                                '(027) 590 3800',
                                style: TextStyle(color: text),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.phone)
                            ]),
                            Row(children: [
                              Spacer(),
                              Text(
                                'Mount Cook, Wellington',
                                style: TextStyle(color: text),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.location_city),
                            ]),
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo('Personal Statement', brightAccent),
                      Spacer(),
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Text(
                              'An honest and hard-working Computer Science Graduate, looking for their first step into the technology consulting industry. Well-developed customer service and interpersonal skills from university and work. Incredibly passionate about all things technology and am looking for an opportunity to harness my strengths in this area, particularly in programming',
                              style: TextStyle(color: text),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo('Skills Summary', brightAccent),
                      Spacer(),
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            HeadingThree('Soft SKills', brightAccent),
                            ListTextItem(
                                listText:
                                    'Well-refined self-management skills and good at meeting deadlines.'),
                            ListTextItem(
                                listText:
                                    'Excellent written and verbal communication skills.'),
                            ListTextItem(
                                listText:
                                    'Working in a fast-paced environment calls for teamwork and synergy.'),
                            ListTextItem(
                                listText:
                                    'Ability to systematically troubleshoot and solve problems.'),
                            ListTextItem(
                                listText:
                                    'Strong stakeholder management ability developed through liaising with external clients during projects.'),
                            SizedBox(height: 10),
                            HeadingThree('Technical SKills', brightAccent),
                            ListTextItem(
                                listText:
                                    'Strong intuition when it comes to understanding and learning new technology.'),
                            ListTextItem(
                                listText:
                                    'Passion for computers has led to extensive hardware and software knowledge.'),
                            ListTextItem(
                                listText:
                                    'Led and managed a team of five developing software/hardware solutions for a client at University.'),
                            SizedBox(height: 10),
                            HeadingThree('Programming Languages', brightAccent),
                            ListTextItem(
                                listText: 'Java - Expert (University)'),
                            ListTextItem(
                                listText: 'SQL - Intermediate (University)'),
                            ListTextItem(
                                listText:
                                    'Flutter - Intermediate (Self-Taught)'),
                            ListTextItem(
                                listText:
                                    'Kotlin - Intermediate (Self-Taught)'),
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo('Employment Summary', brightAccent),
                      Spacer(),
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            HeadingThree('Aro Café, Wellington, New Zealand',
                                brightAccent),
                            HeadingThree('2019-2020', darkAccent),
                            Text(
                              'Chef/Kitchen Hand/FOH',
                              style: TextStyle(color: text),
                            ),
                            SizedBox(height: 10),
                            ListTextItem(
                                listText:
                                    'Learned to work under pressure during busy dinner services.'),
                            ListTextItem(
                                listText:
                                    'Teamwork & Cooperation to keep the business running during peak hours.'),
                            ListTextItem(
                                listText:
                                    'Engaging Customer Service experience.'),
                            SizedBox(
                              height: 10,
                            ),
                            HeadingThree('Watties NZ, Hastings, New Zealand',
                                brightAccent),
                            HeadingThree('2014', darkAccent),
                            Text(
                              'Line and Heavy Machine Operator ',
                              style: TextStyle(color: text),
                            ),
                            SizedBox(height: 10),
                            ListTextItem(
                                listText:
                                    'Quick thinking required to keep the lines going when faults occurred.'),
                            ListTextItem(
                                listText:
                                    'Quality control ensuring product meets certain criteria. '),
                            ListTextItem(
                                listText:
                                    'Assistance in creating efficient solutions for a higher profit.'),
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo('Hobbies', brightAccent),
                      Spacer(),
                      Container(
                        width: 350,
                        child: Column(
                          children: [
                            Row(children: [
                              Spacer(),
                              Text(
                                'Android Mobile Development',
                                style: TextStyle(color: text),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.phone_android_outlined)
                            ]),
                            Row(children: [
                              Spacer(),
                              Text(
                                'Building/Maintaining Computer Systems ',
                                style: TextStyle(color: text),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.computer)
                            ]),
                            Row(children: [
                              Spacer(),
                              Text(
                                'Hiking',
                                style: TextStyle(color: text),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.directions_walk),
                            ]),
                            Row(children: [
                              Spacer(),
                              Text(
                                'Video Games',
                                style: TextStyle(color: text),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.games),
                            ]),
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo('Referees', brightAccent),
                      Spacer(),
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Text(
                              'Thea Pheab',
                              style: TextStyle(color: brightAccent),
                            ),
                            
                            Text(
                              'Aro Café - Manager',
                              style: TextStyle(color: text),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Dylan Lange ',
                              style: TextStyle(color: brightAccent),
                            ),
                            
                            Text(
                              'Itty Bitty Apps - Android Developer',
                              style: TextStyle(color: text),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Floyd Watson',
                              style: TextStyle(color: brightAccent),
                            ),
                            
                            Text(
                              'WeaveIT - Mobile Developer',
                              style: TextStyle(color: text),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Container(
        height: 2.0,
        width: double.infinity,
        color: darkAccent,
      ),
    );
  }
}

class ListTextItem extends StatelessWidget {
  const ListTextItem({
    Key key,
    @required this.listText,
  }) : super(key: key);

  final String listText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          //Icon(Icons.format_list_bulleted_rounded),
          Text(
            '\u2022',
            style: TextStyle(color: darkAccent),
          ),
          SizedBox(width: 10),
          Flexible(
            child: Text(
              listText,
              softWrap: true,
              style: TextStyle(color: text),
            ),
          )
        ],
      ),
    );
  }
}
