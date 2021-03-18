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
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjcsZJpVAdCeJyhLjDRjOBLZDn9FlZbInkKjeonkYe_2emHI5ig4pZ4inpYxqcRJc70RQ&usqp=CAU"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text("Setting"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("Notifications"),
            trailing: Icon(Icons.notifications),
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
