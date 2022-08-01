import 'package:flutter/material.dart';
import 'package:mygarage/registration1_screen.dart';

class CardetailsScreen extends StatefulWidget {
  const CardetailsScreen({Key? key}) : super(key: key);

  @override
  State<CardetailsScreen> createState() => _CardetailsScreenState();
}

class _CardetailsScreenState extends State<CardetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      //   elevation: 1,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //     icon: Icon(Icons.arrow_back),
      //     color: Colors.blue.shade600,
      //   ),
      // ),
      body: Container(
        child: ListView(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(right: 275),
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage('assets/icon/latest.png',
                        ),
                        fit: BoxFit.cover),
                        // color: Colors.blue[300],
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),

                      ),
                    ),
                    Column(
                      
              children: [
                
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 10,right: 10),
                     buildcontainercolumn('Brand'),
                    buildcontainercolumn('Model'),
                     buildcontainercolumn('year'),
                  // ),
              ],
                    ),
                  ],
              ),
               ),
            
            SizedBox(
              height: 10,
            ),
            Container(
              height: 520,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/icon/Logo2.png'),
                fit: BoxFit.cover),
                // color: Colors.blue[300],
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              ),
              child: Column(
              children: [
                buildtextfieldcolumn('License plate','Enter vehicle license plate'),
                buildtextfieldcolumn('State','Enter'),
                buildtextfieldcolumn('Expiration date','DD/MM/YYYY'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        RaisedButton(
                          onPressed: () =>Navigator.pushReplacement(context,
                         MaterialPageRoute(builder: (BuildContext context){
                          return Registration1Screen();
                         }
                         ),
                         ),
                         color: Color(0xffFFF8FF),
                        child: Text('Register',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
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
             
            
          ],
        ),
  
      ),
    );
  }

  Widget buildcontainercolumn(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffF4DEF3),
                      // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16))
                      // borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                   
                     padding: const EdgeInsets.only(top: 2,left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: title,
                        ),
                      
                      ),
      ),
                      
    );
  }

  Widget buildtextfieldcolumn(String labeltext,String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35,top: 15),
      child: TextField(
      
                   decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10 ,left: 10,right: 20),
          labelText: labeltext,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          hintText: placeholder,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
                ),
    );
  }
}
