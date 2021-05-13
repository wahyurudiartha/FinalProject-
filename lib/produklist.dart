import 'package:flutter/material.dart';
import './detail.dart';

class ProdukList extends StatefulWidget {
  @override
  _ProdukListState createState() => _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("Produk List"), actions: [new Icon(Icons.search)]),
      body: Container(
        color: Colors.blue[300],
        child: new ListView(
          children: <Widget>[
            GestureDetector(
              child: Container(
                width: 100,
                height: 130,
                padding: EdgeInsets.only(top: 5, left: 20, right: 20),
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
                  padding: EdgeInsets.only(top: 5, left: 20, right: 20),
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
                padding: EdgeInsets.only(top: 5, left: 20, right: 20),
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
                padding: EdgeInsets.only(top: 5, left: 20, right: 20),
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
            GestureDetector(
              child: Container(
                width: 10,
                height: 130,
                padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/msi.jpg"),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "MSI Optix PAG241CR",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "24 Inch || 240Hz",
                            ),
                            Text(
                              "Rp.4.600.000",
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
                    return DetailProdukMsi();
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
