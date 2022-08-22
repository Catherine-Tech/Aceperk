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
      body:Center( 
        child: Stack(
           clipBehavior: Clip.none,
          children: [
             Container(
              // color: Color(0xff72C7E2),
              decoration: BoxDecoration(
                // color: Colors.blue.shade600,
                image: DecorationImage(image: AssetImage('assets/icon/Logo2.png'),
                fit: BoxFit.cover),
              ),
            ),
            
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    width: 800,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF8FF),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  // child:Text('Registration ID:243285789'),
                  
                    
                          child: Padding(
                           padding: const EdgeInsets.fromLTRB(400, 20, 10, 10),
                           child: Card(
                            clipBehavior: Clip.none,
                            elevation: 2,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            
                            child: Container(
                              width: 300,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/icon/205.jpg'),
                                fit:  BoxFit.cover),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(300, 5, 2, 80),
                                child: Icon(Icons.delete,
                                color: Colors.blue,),
                              ),
                              
                            ),
                            
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
