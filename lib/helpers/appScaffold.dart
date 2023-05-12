import 'package:flutter/material.dart';
import 'package:mycv/helpers/drawer.dart';

class AppScaffold extends StatefulWidget {
  final Widget? body;
  final Widget? drawer;
  final String title;
  final bool withFloatingActionButton;
  final FloatingActionButton? floatingActionButton;
  final void Function()? onPressed;
  static bool isDarkMode = false;

  AppScaffold({
    Key? key,
    this.body,
    required this.title,
    this.drawer,
    this.withFloatingActionButton = false,
    this.onPressed,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: widget.drawer,
      appBar: AppBar(
          title: Text(widget.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
              icon: const Icon(Icons.dark_mode),
              onPressed: () {
                setState(() {
                  AppScaffold.isDarkMode = !AppScaffold.isDarkMode;
                });
              },
            ),
          ]),
      body: widget.body,
      floatingActionButton: widget.withFloatingActionButton
          ? widget.floatingActionButton
          : const SizedBox(),
    );
  }
}
