import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LanguageLevelIndicator extends StatelessWidget {
  final int level;
  final int totalLevels;

  const LanguageLevelIndicator(
      {super.key, required this.level, required this.totalLevels});

  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: totalLevels,
      currentStep: level,
      size: 8,
      padding: 0,
      selectedColor: Colors.teal,
      unselectedColor: Colors.grey,
      roundedEdges: const Radius.circular(4),
    );
  }
}
