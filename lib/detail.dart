import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("LG 26MK400"), actions: [new Icon(Icons.search)]),
      body: new Container(
        color: Colors.blue[400],
        child: Container(
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      "https://www.lg.com/id/images/monitor/md06016616/gallery/N02_medium02.jpg")),
              Container(
                color: Colors.yellow[700],
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rp. 1.500.000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[600],
                          fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red[600],
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.deepOrange,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Features : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: (17))),
                          Text("Aspect Ratio 16:9"),
                          Text("Resolution 1920 x 1080"),
                          Text("Refresh Rate 75Hz"),
                          Text("Radeon FreeSync™"),
                          Text("TN Panel with FULL HD Resolution"),
                          Text("Black Stabilizer"),
                          Text("Kontrol Pada Layar"),
                          Text("1Ms Response Time"),
                        ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
