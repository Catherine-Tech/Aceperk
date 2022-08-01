import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Registration1Screen extends StatefulWidget {
  const Registration1Screen({Key? key}) : super(key: key);

  @override
  State<Registration1Screen> createState() => _Registration1ScreenState();
}

class _Registration1ScreenState extends State<Registration1Screen> {
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
        child: Container(
          width: 1400,
          height: 750 ,
          decoration: BoxDecoration(
            // color: Colors.blue[400],
            image: DecorationImage(image: AssetImage('assets/icon/Logo2.png'),
            fit: BoxFit.cover)
            
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 200),
              child: Column(
                children: [
                  Container(
                    
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,color: Colors.white
                    ),
                    child: Icon(Icons.done,
                    size: 50,),
                  ),
                 
                  Column(
                    children: [
                      Text('Thank you!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),),
                      Text('Your registration was successful.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),)
                    ],
                  ),
                  Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Center(
                    child: Column(
                      children: [
                        RaisedButton(onPressed: (){ Navigator.of(context).pop();},
                         
                         color: Color(0xffFFF8FF),
                         child: Text('Let\'s Start',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue,
                         ),
                         ),
                         ),
                      ],
                    ),
                  ),
                ),
              ),
                ],
                 
              ),
            ),
          ),
        ),

          
        ),
        

      
      
    );
  }
}
