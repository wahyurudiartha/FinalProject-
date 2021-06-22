import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tugas2/crud/pelanggan.dart';

class UpdatePelanggan extends StatefulWidget {
  final Pelanggan pelanggan;
  UpdatePelanggan({this.pelanggan});
  @override
  _UpdatePelangganState createState() => _UpdatePelangganState();
}

class _UpdatePelangganState extends State<UpdatePelanggan> {
  var _controllerNohp = TextEditingController();

  var _controllerNama = TextEditingController();

  var _controllerAlamat = TextEditingController();

  void addTambahPelanggan() async {
    var url = 'http://192.168.1.2/db_mobile/update_pelanggan.php';
    var response = await http.post(url, body: {
      'id': widget.pelanggan.id,
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
  void initState() {
    _controllerNohp.text = widget.pelanggan.nohp;
    _controllerNama.text = widget.pelanggan.nama;
    _controllerAlamat.text = widget.pelanggan.alamat;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Data Pelanggan'),
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
          SizedBox(height: 16),
          RaisedButton(
            onPressed: () {
              addTambahPelanggan();
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
