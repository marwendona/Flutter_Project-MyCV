import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mycv/Home/home.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlameSplashScreen(
      controller: FlameSplashController(
        waitDuration: const Duration(seconds: 4),
      ),
      theme: FlameSplashTheme(
        logoBuilder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                    minHeight: 100,
                    maxWidth: 600
                ),
                child: Image.asset(
                  'assets/images/splash_image.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
        backgroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.5),
              ],
            )),
      ),
      onFinish: (BuildContext context) async {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MyHomePage(title: "Marwen Kammoun"),
          ),
        );
      },
    );
  }
}