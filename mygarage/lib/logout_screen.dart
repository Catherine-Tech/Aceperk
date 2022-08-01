import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mygarage/home_screen.dart';
// import 'package:mygarage/menu_screen.dart';
import 'package:mygarage/splash_screen.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.blue.shade600,
        ),
    ),
      body: Center(
        child: Stack(
          children: [
            Container(
              // color: Color(0xff72C7E2),
              decoration: BoxDecoration(
                // color: Colors.blue.shade600,
                image: DecorationImage(image: AssetImage('assets/icon/Logo.png'),
                fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Are sure you want to',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Log out?',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 380, 10, 10),
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      RaisedButton(
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen())),
                        child: Text(
                          'Log out',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        color: Color(0xffFFF8FF),),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return HomeScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'cancel',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
