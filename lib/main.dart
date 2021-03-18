import 'package:flutter/material.dart';
import "./dashboard.dart" as dashboard;

void main() {
  runApp(new MaterialApp(
    title: "TUGAS2",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: dashboard.Dashboard(),
      ),
    );
  }
}
