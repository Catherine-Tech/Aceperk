import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mygarage/Screens/cardetails_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
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
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Container(
                height: 200,
                width: 1800,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  // color: Color(0xffFFF8FF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/icon/latest.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
           
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 80,
                    width: 1200,
                    color: Color(0xff72C7E2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Registration code...',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    width: 150,
                    height: 40,
                    right: -20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return CardetailsScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 40,
                        color: Colors.white,
                        child: Center(child: Text('ADD YOUR CAR...',
                        style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w100),)),
                      ),
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
