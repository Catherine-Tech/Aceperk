import 'package:flutter/material.dart';
import 'package:mygarage/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return SettingsScreen();
              }));
            },
            icon: Icon(Icons.settings),
            color: Colors.blue.shade600,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                'Edit Profile',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.blue.withOpacity(0.1),
                            offset: Offset(0, 10),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icon/205.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        // decoration: BoxDecoration(
                        //   shape: BoxShape.circle,
                        // //   borderRadius: BorderRadius.all(Radius.circular(2))
                        // ),
                        child: Icon(Icons.edit),
                        color: Colors.blue.shade500,
                      
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              buildprofiletext('Full name', 'Juma Cate'),
              buildprofiletext('E-mail', 'jcate@flutter.com'),
              buildprofiletext('Password', '.......'),
              buildprofiletext('Residence', 'Juja,kenya'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildprofiletext(String labelText, String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35,right: 50),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: labelText,
          hintText: placeholder,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
