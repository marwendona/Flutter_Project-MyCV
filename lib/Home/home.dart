import 'package:flutter/material.dart';
import 'package:mycv/Atoms/languageLevelIndicator.dart';
import 'package:mycv/helpers/appScaffold.dart';
import 'package:mycv/helpers/data.dart';
import 'package:mycv/helpers/drawer.dart';
import 'package:mycv/helpers/launchers.dart';
import 'package:mycv/utils/style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title, this.isDarkMode = false});

  final String title;
  bool isDarkMode = false;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      drawer: const CustomDrawer(),
      title: 'Personal information',
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/profile_image.jpg')),
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.blue),
                  child: const SizedBox(
                    height: 120,
                    width: 120,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Marwen Kammoun",
                style: styleNotoBlueBold22,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Card(
                borderOnForeground: true,
                elevation: 4.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Contacts",
                            style: styleNotoOrangeAccentBold16,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ...contactList.map((e) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(e.contactIcon, height: 20),
                                      InkWell(
                                        onTap: () async {
                                          if (e.contactType == "Facebook") {
                                            launchFacebook(e.contactInfo);
                                          }
                                          if (e.contactType == "Phone") {
                                            launchPhoneNumber(e.contactInfo);
                                          }
                                          if (e.contactType == "Gmail") {
                                            sendEmail(e.contactInfo);
                                          }
                                          if (e.contactType == "Home") {
                                            openLocation(e.contactInfo);
                                          }
                                          if (e.contactType == "LinkedIn") {
                                            openLinkedInProfile(e.contactInfo);
                                          }
                                          if (e.contactType == "Github") {
                                            openGitHubProfile(e.contactInfo);
                                          }
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(e.contactInfo),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8.0, right: 8.0, left: 8.0),
                          child: Text("Arabic"),
                        ),
                        LanguageLevelIndicator(level: 5, totalLevels: 6),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8.0, right: 8.0, left: 8.0),
                          child: Text("English"),
                        ),
                        LanguageLevelIndicator(level: 3, totalLevels: 5),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    child: VerticalDivider(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, right: 8.0, left: 8.0),
                          child: Text("French"),
                        ),
                        const LanguageLevelIndicator(level: 4, totalLevels: 5),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, right: 8.0, left: 8.0),
                          child: Text("Spanish"),
                        ),
                        const LanguageLevelIndicator(level: 2, totalLevels: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
