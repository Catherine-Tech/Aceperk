import 'package:flutter/material.dart';
import 'package:mygarage/login_screen.dart';
class ResetpasswordScreen extends StatefulWidget {
  ResetpasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetpasswordScreen> createState() => _ResetpasswordScreenState();
}

class _ResetpasswordScreenState extends State<ResetpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              //Welcome back Text
              Text(
                'Reset Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ), //Text
              ),
              SizedBox(
                height: 30,
              ),
              
             
              //email textfiel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFF8FF),
                    border: Border.all(
                      color: Color(0xffFFF8FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.lock),
                          hintText: 'New Passwoard'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFF8FF),
                    border: Border.all(
                      color: Color(0xffFFF8FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.lock),
                          hintText: 'Confirm Passwoard'),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 30,
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      RaisedButton(onPressed: ()=>Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (
                          context)=>LoginScreen(),),
                          ),
                          color: Colors.blue,
                          child: Text('Reset',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          ),
                          ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}