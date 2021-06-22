import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugas2/crud/tambahstok.dart';
import 'package:tugas2/crud/stok.dart';
import 'package:tugas2/crud/updatestok.dart';

class ListStok extends StatefulWidget {
  @override
  _ListStokState createState() => _ListStokState();
}

class _ListStokState extends State<ListStok> {
  List<Stok> _listStok = [];

  void getListStok() async {
    _listStok.clear();
    String url = 'http://192.168.1.2/db_mobile/get_list_stok.php';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      if (responseBody['succes']) {
        List listData = responseBody['data'];
        listData.forEach((itemStok) {
          _listStok.add(Stok.fromMap(itemStok));
        });
      } else {}
    } else {
      print('Request Error');
    }
    setState(() {});
  }

  void deleteStok(String id) async {
    var url = 'http://192.168.1.2/db_mobile/delete_Stok.php';
    var response = await http.post(
      url,
      body: {'id': id},
    );
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      if (responseBody['succes']) {
        print('Berhasil');
      } else {
        print('Gagal');
      }
    } else {
      print('Request Eror');
    }
    getListStok();
  }

  @override
  void initState() {
    getListStok();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stok'),
          actions: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  getListStok();
                })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TambahStok()),
            ).then((value) => getListStok());
          },
        ),
        body: _listStok.length > 0
            ? ListView.builder(
                itemCount: _listStok.length,
                itemBuilder: (context, index) {
                  Stok stok = _listStok[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightBlue[600],
                        child: Icon(Icons.monitor, color: Colors.white),
                      ),
                      title: Text(stok.namabarang),
                      subtitle: Text("Stok " + stok.stok),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UpdateStok(
                                  stok: stok,
                                )),
                      ).then((value) => getListStok()),
                      trailing: Material(
                        child: InkWell(
                          onTap: () {
                            deleteStok(stok.id);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.delete,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: Text('Data Masih Kosong'),
              ));
  }
}
