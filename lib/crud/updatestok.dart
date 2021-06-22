import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tugas2/crud/stok.dart';

class UpdateStok extends StatefulWidget {
  final Stok stok;
  UpdateStok({this.stok});
  @override
  _UpdateStokState createState() => _UpdateStokState();
}

class _UpdateStokState extends State<UpdateStok> {
  var _controllerNamabarang = TextEditingController();

  var _controllerStok = TextEditingController();

  void addTambahStok() async {
    var url = 'http://192.168.1.2/db_mobile/update_stok.php';
    var response = await http.post(url, body: {
      'id': widget.stok.id,
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
  void initState() {
    _controllerNamabarang.text = widget.stok.namabarang;
    _controllerStok.text = widget.stok.stok;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Data Stok'),
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
          SizedBox(height: 16),
          RaisedButton(
            onPressed: () {
              addTambahStok();
            },
            child: Text(
              'Update',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
