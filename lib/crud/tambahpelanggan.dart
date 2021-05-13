import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TambahPelanggan extends StatelessWidget {
  var _controllerNohp = TextEditingController();
  var _controllerNama = TextEditingController();
  var _controllerAlamat = TextEditingController();

  void addTambahPelanggan() async {
    var url = 'http://192.168.1.5/db_mobile/add_pelanggan.php';
    var response = await http.post(url, body: {
      'nohp': _controllerNohp.text,
      'nama': _controllerNama.text,
      'alamat': _controllerAlamat.text,
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
        title: Text('Input Data Pelanggan'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: _controllerNama,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nama Pelanggan'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: _controllerNohp,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nomor HP'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: _controllerAlamat,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Alamat'),
            ),
          ),
          SizedBox(height: 8),
          RaisedButton(
            onPressed: () {
              addTambahPelanggan();
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
