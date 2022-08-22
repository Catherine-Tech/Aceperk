import 'package:flutter/material.dart';
import 'package:mygarage/Screens/logout_screen.dart';
import 'package:mygarage/Screens/mycars_screen.dart';
import 'package:mygarage/Screens/profile_screen.dart';
import 'package:mygarage/Screens/registration_screen.dart';
import 'package:mygarage/Screens/settings_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(8.0), //removing the space above
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('name'),
            accountEmail: Text('emailaddress'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/icon/latest.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                  // color: Colors.blue,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffFFF8FF), 
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),//shows up incase of delay in loading
              image: DecorationImage(
                image: AssetImage('assets/icon/Logo2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.person),
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ProfileScreen();
                        },
                      ),
                    );
                  },
                  child: Text('Profile')),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.app_registration),
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return RegistrationScreen();
                        },
                      ),
                    );
                  },
                  child: Text('Register')),
            ),
          ),
          Container(
            child: ListTile(
                leading: Icon(Icons.garage),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return MycarsScreen();
                          },
                        ),
                      );
                    },
                    child: Text('My Garage'))),
          ),
          const Divider(indent: 5,endIndent: 10,),
          Container(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return SettingsScreen();
                        },
                      ),
                    );
                  },
                  child: Text('Settings')),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.lock_open),
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return LogoutScreen();
                        },
                      ),
                    );
                  },
                  child: Text('Log out')),
            ),
          ),
        ],
      ),
    );
  }
}
