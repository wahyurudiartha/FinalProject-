import 'package:flutter/material.dart';
import 'package:tugas2/crud/listpelanggan.dart';
import './about.dart';
import './produklist.dart';
import './setting.dart';
import './ui/home.dart';
import "./drawer.dart" as drawer;

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            title: new Text("Dashboard"), actions: [new Icon(Icons.search)]),
        drawer: drawer.drawer(),
        body: Container(
          color: Colors.blue[300],
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  //padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Image(
                    image: AssetImage("assets/Banner.jpg"),
                  ),
                ),
                Image(
                  image: AssetImage("assets/dashboard.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          width: 90,
                          height: 90,
                          //color: Colors.red,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.shopping_bag_outlined,
                                        size: 35),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 5)),
                                    Text("Produk"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return ProdukList();
                            }),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 90,
                          height: 90,
                          //color: Colors.red,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.settings, size: 35),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 5)),
                                    Text("Pengaturan"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return Setting();
                            }),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 90,
                          height: 90,
                          //color: Colors.red,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.format_list_bulleted,
                                        size: 35),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 5)),
                                    Text("Pelanggan"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return ListPelanggan();
                            }),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 90,
                          height: 90,
                          //color: Colors.red,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.help_outline_outlined,
                                        size: 35),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 5)),
                                    Text("Tentang"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return About();
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
