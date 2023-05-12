import 'package:flutter/material.dart';
import 'package:mycv/helpers/appScaffold.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Education',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'EDUCATION',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
                '2021-PRESENT', '2nd Year Computer Engineering - IIT'),
            const SizedBox(height: 16.0),
            _buildEducationItem(
                '2017-2019', 'Master in Applied Mathematics - FSS'),
            const SizedBox(height: 16.0),
            _buildEducationItem(
                '2012-2017', 'Bachelor of Science in Mathematics - FSS'),
            const SizedBox(height: 32.0),
            const Text(
              'SPECIALTIES',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildSpecialtiesItem(
                'Computer Engineering', 'Software Engineering, Decisional Informatics, Web Development, Deep Learning, Entrepreneurial Management'),
            const SizedBox(height: 16.0),
            _buildSpecialtiesItem(
                'Applied Mathematics', 'Image Processing, Signal Processing, Mathematical Morphology, Pattern Recognition, Audiovisual Production, Telecommunication'),
            const SizedBox(height: 16.0),
            _buildSpecialtiesItem(
                'Mathematics', 'Probability, Statistics, Scientific Computation and Numerical Methods, Numerical Analysis, Linear Algebra, Integration and Differential Equations'),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(String duration, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          duration,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          title,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _buildSpecialtiesItem(String title, String specialties) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          specialties,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
