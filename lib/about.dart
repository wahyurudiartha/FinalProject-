import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("About Application"),
          actions: [new Icon(Icons.search)]),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        color: Colors.blue[300],
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage("assets/logo.png")),
              Text(
                "        Aplikasi ini adalah aplikasi penyedia berbagai macam monitor dari monitor biasa, monitor untuk editing dan juga monitor untuk gaming. Aplikasi ini memfasilitasi pembelian monitor secara online",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
