import 'package:flutter/material.dart';
import 'package:splashscreen/splash_screen.dart';
 
void main() {
  runApp(SplashScreenDemoApp());
}
 
class SplashScreenDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Error here for now
    );
  }
}