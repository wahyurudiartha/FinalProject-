import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tugas2/dashboard.dart' as dashboard;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.only(bottom: 20),
            child: new Image(
              image: AssetImage("assets/Banner.jpg"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: new Text(
              "Selamat Datang,",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'password'),
            ),
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                //border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 50,
              height: 50,

              //color: Colors.red,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 5)),
                      Text("Login"),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) {
                  return dashboard.Dashboard();
                }),
              );
            },
          ),

          /*SizedBox(height: 8),
          RaisedButton(
            onPressed: () {
              dashboard.Dashboard();
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 18),
            ),
          ),*/
        ],
      ),
    );
  }
}
