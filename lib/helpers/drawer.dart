import 'package:flutter/material.dart';
import 'package:mycv/Education/education.dart';
import 'package:mycv/ProfessionalExperience/professional_experience.dart';
import 'package:mycv/Projects/projects.dart';
import 'package:mycv/Skills/skills.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 100.0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background0.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profil.jpg"),
                radius: 80,
              ),
            ),
          ),
          ListTile(
            title: const Text("Projects"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProjectsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Professional Experience"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfessionalExperiencePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Education"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const EducationPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Skills"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SkillsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
