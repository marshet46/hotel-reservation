import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import './webview.dart';

import 'home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen
    Timer(
      Duration(seconds: 3), // Change the duration as needed
      () {
        // Navigate to the home screen after the delay
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => WebviewTwo(url:"https://system.abyssiniasoftware.com/hotel/"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your splash screen content goes here
            Image.asset('assets/logo.png', width: 200, height: 200),
            SizedBox(height: 20),
            Text(
              'Welcome to My App',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}


