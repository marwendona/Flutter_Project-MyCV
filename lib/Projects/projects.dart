import 'package:flutter/material.dart';
import 'package:mycv/helpers/appScaffold.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Projects Page',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  '2019 - Detection and classification of vocalizations of marine mammals using artificial neural network - Sinay, France',
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  '• Developed a deep learning model using Python for detecting marine mammal vocalizations with a database\n'
                      '• Transformed marine mammal voice signals into spectrograms using MATLAB',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  '2022 - Screen sharing application development - personal project',
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  '• Developed a screen sharing application in Java using UDP protocol',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  '2022 - Business portal and tender website - personal project',
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  '• Developed the back-end of the application using PHP\n'
                      '• Communicated with PHPMyAdmin database\n'
                      '• Developed the front-end of the application using Razor',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
