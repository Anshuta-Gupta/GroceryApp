import 'package:app1/pages/onboard.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bottomnav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool loggedInBefore = prefs.getBool('loggedInBefore') ?? false;

    // Delay for a short period to show the splash screen
    await Future.delayed(const Duration(milliseconds: 1500));

    if (loggedInBefore) {
      // If the user has logged in before, navigate to the home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNav()),
      );
    } else {
      // If it's the first time or the user hasn't logged in before, navigate to the onboarding screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboard()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 131, 96, 96),
              Color.fromARGB(255, 85, 60, 60)
            ])),
        child: Center(
          child: Image.asset(
            "images/logo.jpg",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
