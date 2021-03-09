import 'package:flutter/material.dart';
import 'package:tugas1/detail.dart';
import "./drawer.dart" as drawer;

void main() {
  runApp(new MaterialApp(
    title: "TUGAS1",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Produk List"), actions: [new Icon(Icons.search)]),
      drawer: drawer.drawer(),
      body: Container(
        color: Colors.blue,
        child: new ListView(
          children: <Widget>[
            GestureDetector(
              child: Container(
                width: 100,
                height: 130,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          image: NetworkImage(
                              "https://www.lg.com/id/images/monitor/md06016616/gallery/N02_medium02.jpg")),
                      Row(
                        children: <Widget>[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "LG 26MK400",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(
                                  "22 Inch || 75Hz",
                                ),
                                Text(
                                  "Rp.1.500.000",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.orange[900]),
                                ),
                              ])
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) {
                    return DetailProduk();
                  }),
                );
              },
            ),
            GestureDetector(
              child: Container(
                  width: 10,
                  height: 130,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/samsul.jpg"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "SAMSUNG 24SF350",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "22 Inch || 144Hz",
                                  ),
                                  Text(
                                    "Rp.2.100.000",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.orange[900]),
                                  ),
                                ])
                          ],
                        ),
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) {
                    return DetailProdukSamsung();
                  }),
                );
              },
            ),
            GestureDetector(
              child: Container(
                width: 10,
                height: 130,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/rog.jpg"),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "ROG Strix XG248",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "24 Inch || 240Hz",
                            ),
                            Text(
                              "Rp.4.000.000",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.orange[900]),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) {
                    return DetailProdukRog();
                  }),
                );
              },
            ),
            GestureDetector(
              child: Container(
                width: 10,
                height: 130,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/acer.jpg"),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Acer Predator XB241H",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "24 Inch || 240Hz",
                            ),
                            Text(
                              "Rp.4.500.000",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.orange[900]),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) {
                    return DetailProdukAcer();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
