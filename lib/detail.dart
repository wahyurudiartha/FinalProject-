import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("LG 26MK400"), actions: [new Icon(Icons.search)]),
      body: new Container(
        color: Colors.blue[300],
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
                          "6",
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

class DetailProdukSamsung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("SAMSUNG 24SF350"),
          actions: [new Icon(Icons.search)]),
      body: new Container(
        color: Colors.blue[400],
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/samsul.jpg"),
              Container(
                color: Colors.yellow[700],
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rp.2.100.000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[600],
                          fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "7",
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
                          Text("Refresh Rate 144Hz"),
                          Text("Panel PLS™"),
                          Text("TN Panel with FULL HD Resolution"),
                          Text(
                              "Active Display Size (HxV) (mm) 521.28 x 293.22"),
                          Text("Kontrol Pada Layar"),
                          Text("Response Time 4 ms"),
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

class DetailProdukRog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("ROG Strix XG248"),
          actions: [new Icon(Icons.search)]),
      body: new Container(
        color: Colors.blue[400],
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/rog.jpg"),
              Container(
                color: Colors.yellow[700],
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rp.4.000.000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[600],
                          fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "8,5",
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
                          Text("Refresh Rate 240Hz"),
                          Text("G-Sync compatible"),
                          Text("GameFast Input technology"),
                          Text(
                              "Active Display Size (HxV) (mm) 521.28 x 293.22"),
                          Text("GamePlus(modes) : Yes"),
                          Text("Response Time : 1ms (Gray to Gray)"),
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

class DetailProdukAcer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("Acer Predator XB241H"),
          actions: [new Icon(Icons.search)]),
      body: new Container(
        color: Colors.blue[400],
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/acer.jpg"),
              Container(
                color: Colors.yellow[700],
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rp.4.500.000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[600],
                          fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "9",
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
                          Text("Refresh Rate 240Hz"),
                          Text("NVIDIA 3D Vision"),
                          Text("GameFast Input technology"),
                          Text(
                              "Active Display Size (HxV) (mm) 521.28 x 293.22"),
                          Text(
                              "Panel Technology: Twisted Nematic Film (TN Film)"),
                          Text("Response Time : 1ms (Gray to Gray)"),
                          Text("3-Years PT Acer Indonesia"),
                          Text("VESA wall-mounted"),
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

class DetailProdukMsi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("MSI Optix PAG241CR"),
          actions: [new Icon(Icons.search)]),
      body: new Container(
        color: Colors.blue[400],
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/msi.jpg"),
              Container(
                color: Colors.yellow[700],
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rp.4.600.000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[600],
                          fontSize: 20),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "9",
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
                          Text("Refresh Rate 240Hz"),
                          Text("Yes, MSI Anti-Flicker"),
                          Text("NVIDIA GSYNC"),
                          Text("Color Gamut 91% DCI-P3, 125% sRGB"),
                          Text("AMD FreeSync"),
                          Text("Response Time : 1ms (Gray to Gray)"),
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
