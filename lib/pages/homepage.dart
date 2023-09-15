// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_app/pages/editpage.dart';
import 'package:cv_app/widget/cv_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List typedCvSectionValues = [
    //Full Name
    'ANIFOWOSE MICHAEL SASAENIYAN',
    //Slack UserName
    'michaelAnifowose',
    //Github Handle
    'GITHUB.COM/MSAMICHAEL',
    //Personal Bio
    'I am a mobile developer working with Flutter and Dart. Along with being responsible and motivated, i also possess an open mind, a good work ethic, and both logical and creative thinking abilities.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 90.0,
        height: 60.0,
        child: FloatingActionButton(
            backgroundColor: Colors.blue[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0), // Adjust the radius as needed
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.edit),
                  Text(
                    'Edit',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            onPressed: () async {
              typedCvSectionValues = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => EditPage()),
                ),
              );
              setState(() {});
            }),
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            

            children: [
              SizedBox(height: 60),
              Text(
                'My CV',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CvSection(
                    sectionTitle: 'Full Name',
                    sectionValue: typedCvSectionValues[0],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CvSection(
                    sectionTitle: 'Slack Username',
                    sectionValue: typedCvSectionValues[1],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CvSection(
                    sectionTitle: 'Github Handle',
                    sectionValue: typedCvSectionValues[2],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CvSection(
                    sectionTitle: 'Personal Bio',
                    sectionValue: typedCvSectionValues[3],
                  ),
                  SizedBox(
                    height: 90,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
