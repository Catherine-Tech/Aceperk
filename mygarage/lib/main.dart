import 'package:flutter/material.dart';
// import 'package:mygarage/login_screen.dart';
// import 'package:mygarage/Screens/splash_screen.dart';
import 'package:mygarage/Screens/splash_screen.dart';
// import 'package:mygarage/login_screen.dart';
// import 'package:mygarage/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}

