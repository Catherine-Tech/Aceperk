// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';

import 'cardetails_screen.dart';
// import 'package:mygarage/cardetails_screen.dart';

class MycarsScreen extends StatefulWidget {
  const MycarsScreen({Key? key}) : super(key: key);

  @override
  State<MycarsScreen> createState() => _MycarsScreenState();
}

class _MycarsScreenState extends State<MycarsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/icon/Logo2.png'),
          fit: BoxFit.cover),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              child: Positioned(
                left: 20,
                top: 30,
                child: Card(
                  elevation: 1,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    width: 500,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF8FF),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [Text('Registration ID:1223233'),
                      SizedBox(width: 180,),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/icon/205.jpg'),
                            fit:  BoxFit.cover),
                          ),
                        ),
                      )],
                    ),
                  ),
                ),
              ),
            ),
             Container(
              child: Positioned(
                left: 20,
                top: 200,
                child: Card(
                  elevation: 1,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    width: 500,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF8FF),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [Text('Registration ID:1223233'),
                      SizedBox(width: 180,),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/icon/205.jpg'),
                            fit:  BoxFit.cover),
                          ),
                         
                        ),
                         
                      ),
                       Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                       
                        child: Icon(Icons.delete,
                        color: Colors.blue.shade500,
                      
                      ),
                      ),
                    ),
                    ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Positioned(
              top: 380,
              left: 20,
              child: Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue.withOpacity(0.3),

                  ),
                  color: Color(0xff72C7E2),
                ),
                child: Column(
                  children: [
                  
                       Text('ADD YOUR CAR',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                      ),),
                    
                    Divider(thickness: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color(0xff72C7E2)),
                      child: Text('Registration code...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),),
                    ),
                    
                  ],
                ),
              ),
            ),
            
           
          ],
          
        ),
        
      ),
      
    );
  }
}
