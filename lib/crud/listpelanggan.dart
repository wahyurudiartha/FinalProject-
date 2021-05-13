import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugas2/crud/tambahpelanggan.dart';
import 'package:tugas2/crud/pelanggan.dart';
import 'package:tugas2/crud/updatepelanggan.dart';

class ListPelanggan extends StatefulWidget {
  @override
  _ListPelangganState createState() => _ListPelangganState();
}

class _ListPelangganState extends State<ListPelanggan> {
  List<Pelanggan> _listPelanggan = [];

  void getListPelanggan() async {
    _listPelanggan.clear();
    String url = 'http://192.168.1.5/db_mobile/get_list_Pelanggan.php';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      if (responseBody['succes']) {
        List listData = responseBody['data'];
        listData.forEach((itemPelanggan) {
          _listPelanggan.add(Pelanggan.fromMap(itemPelanggan));
        });
      } else {}
    } else {
      print('Request Error');
    }
    setState(() {});
  }

  void deletePelanggan(String id) async {
    var url = 'http://192.168.1.5/db_mobile/delete_Pelanggan.php';
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
    getListPelanggan();
  }

  @override
  void initState() {
    getListPelanggan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Pelanggan'),
          actions: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  getListPelanggan();
                })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TambahPelanggan()),
            ).then((value) => getListPelanggan());
          },
        ),
        body: _listPelanggan.length > 0
            ? ListView.builder(
                itemCount: _listPelanggan.length,
                itemBuilder: (context, index) {
                  Pelanggan pelanggan = _listPelanggan[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightBlue[600],
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text(pelanggan.nama),
                      subtitle: Text("No Hp: " + pelanggan.nohp),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UpdatePelanggan(
                                  pelanggan: pelanggan,
                                )),
                      ).then((value) => getListPelanggan()),
                      trailing: Material(
                        child: InkWell(
                          onTap: () {
                            deletePelanggan(pelanggan.id);
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
