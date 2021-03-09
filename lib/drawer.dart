import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("I Gede Wahyu Rudiartha"),
            accountEmail: Text("wahyu.rudiartha@undiksha.ac.id"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/3x4 fix.jpg",
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue[900]),
          ),
          ListTile(
            title: Text("Setting"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("Log Out"),
            trailing: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
