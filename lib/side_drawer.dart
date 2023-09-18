import 'package:flutter/material.dart';

import 'AppColor.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: CPrimaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                 // backgroundImage: AssetImage('assets/profile_picture.jpg'), // Replace with your profile picture
                  child: Icon(Icons.person_2_rounded),
                  backgroundColor: Colors.blueGrey,
                ),
                SizedBox(height: 8.0),
                Text(
                  'User Name', // Replace with user name
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log Out'),
            onTap: () {
              // Handle log out button press
            },
          ),
        ],
      ),
    );
  }
}