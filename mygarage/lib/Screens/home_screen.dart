import 'package:flutter/material.dart';
import 'package:mygarage/Screens/menu_screen.dart';
// import 'package:mygarage/menu_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Home'),
        
        backgroundColor: Colors.blue[200]
      ),
      drawer: const MenuScreen(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/icon/Logo2.png'),
          fit: BoxFit.cover),
          // color: Color(0xffFFF8FF),
        ),
      ),
    );
  }
}
