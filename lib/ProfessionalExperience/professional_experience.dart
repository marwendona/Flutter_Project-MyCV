import 'package:flutter/material.dart';
import 'package:mycv/helpers/appScaffold.dart';

class ProfessionalExperiencePage extends StatefulWidget {
  const ProfessionalExperiencePage({Key? key}) : super(key: key);

  @override
  State<ProfessionalExperiencePage> createState() => _ProfessionalExperiencePageState();
}

class _ProfessionalExperiencePageState extends State<ProfessionalExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Professional Experience',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  '15/07/2022-15/08/2022',
                  'Website Development - CR LASER',
                  'Used Angular and Spring Boot to develop a website for the company. Manipulated data of 30 workers to build a database using MySQL.',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  '18/03/2019-18/06/2019',
                  'Python and MATLAB Developer - SINAY-France',
                  'Developed, implemented, and improved Python and MATLAB code for a project. Conducted unit, functional, and technical testing. Created data analysis solutions, technical documentation, and performed technology watch.',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  '18/03/2019-18/06/2019',
                  'MATLAB Developer - MLI Production',
                  'Improved image and signal processing solutions. Conducted functional and technical testing.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceSection(String duration, String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(duration, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 8),
        Text(description),
      ],
    );
  }
}
