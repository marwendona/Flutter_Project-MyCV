import 'dart:io';

class SkillOne {
  String skillCategory;
  String skillName;
  File? skillImage;

  SkillOne({required this.skillCategory, required this.skillName, this.skillImage});
}

class Skill {
  String skillCategory;
  String skillName;
  String? skillImage;

  Skill({required this.skillCategory, required this.skillName, this.skillImage});
}