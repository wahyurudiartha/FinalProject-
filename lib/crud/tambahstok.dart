import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TambahStok extends StatelessWidget {
  var _controllerNamabarang = TextEditingController();
  var _controllerStok = TextEditingController();

  void addTambahStok() async {
    var url = 'http://192.168.1.2/db_mobile/add_stok.php';
    var response = await http.post(url, body: {
      'namabarang': _controllerNamabarang.text,
      'stok': _controllerStok.text,
    });
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Stok Barang'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: _controllerNamabarang,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nama Barang'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: _controllerStok,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Stok'),
            ),
          ),
          SizedBox(height: 8),
          RaisedButton(
            onPressed: () {
              addTambahStok();
            },
            child: Text(
              'Simpan Data',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
