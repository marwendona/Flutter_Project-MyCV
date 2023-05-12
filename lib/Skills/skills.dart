import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mycv/helpers/data.dart';
import 'package:mycv/models/skill.dart';

class SkillsPage extends StatefulWidget {
  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  final picker = ImagePicker();
  List<SkillOne> skills = skillsOneList;
  final _formKey = GlobalKey<FormState>();

  Future pickImage(SkillOne skill) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        skill.skillImage = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _showDialog() {
    SkillOne newSkill = SkillOne(skillCategory: '', skillName: '');

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add a new skill'),
            content: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter skill category"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a category';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      newSkill.skillCategory = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter skill name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      newSkill.skillName = value!;
                    },
                  ),
                  ElevatedButton(
                    child: Text('Pick Image'),
                    onPressed: () {
                      pickImage(newSkill);
                    },
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Add Skill'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    setState(() {
                      skills.add(newSkill);
                    });
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Skill Example'),
        backgroundColor: Colors.teal, // Change the default color to teal
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...skillsList.map((e) =>
                ListTile(
                  title: Text(e.skillName),
                  subtitle: Text(e.skillCategory),
                  leading: e.skillImage == null
                      ? Icon(Icons.image)
                      : SizedBox(height: 50,width: 50,child: Image.asset(e.skillImage!)),
                )
            ).toList(),
            ...skillsOneList.map((e) =>
                ListTile(
                  title: Text(e.skillName),
                  subtitle: Text(e.skillCategory),
                  leading: e.skillImage == null
                      ? Icon(Icons.image)
                      : SizedBox(height: 50,width: 50,child: Image.file(e.skillImage!)),
                )
            ).toList(),
            // ListView.builder(
            //   itemCount: skills.length,

            // ListView.builder(
            //   itemCount: skills.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text(skills[index].skillName),
            //       subtitle: Text(skills[index].skillCategory),
            //       leading: skills[index].skillImage == null
            //           ? Icon(Icons.image)
            //           : SizedBox(width: 50,height: 50,child: Image.file(skills[index].skillImage!)),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        tooltip: 'Add Skill',
        child: Icon(Icons.add),
      ),
    );
  }
}
