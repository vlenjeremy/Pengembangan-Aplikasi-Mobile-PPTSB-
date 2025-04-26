import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'bedah_rumah.dart';

class TambahBedahRumahPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namaPemilikController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _keteranganController = TextEditingController();
  final _fotoController = TextEditingController();

  Future<void> _submitData(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      print('Form is not valid');
      return;
    }

    final namaPemilik = _namaPemilikController.text;
    final alamat = _alamatController.text;
    final keterangan = _keteranganController.text;
    final fotoFile = _fotoController.text;

    print(
        'Submitting data: namaPemilik: $namaPemilik, alamat: $alamat, keterangan: $keterangan, foto: $fotoFile');

    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse('http://172.27.81.66:8000/api/bedahrumah'),
      );

      request.fields['nama_pemilik'] = namaPemilik;
      request.fields['alamat'] = alamat;
      request.fields['keterangan'] = keterangan;

      if (fotoFile.isNotEmpty) {
        var foto = await http.MultipartFile.fromPath('foto', fotoFile);
        request.files.add(foto);
      }

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201 || response.statusCode == 200) {
        print('Data successfully added');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BedahRumahPage()),
        );
      } else {
        print('Failed to add data: ${response.body}');
        throw Exception('Failed to add data');
      }
    } catch (e) {
      print('Exception occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Data Request Bedah Rumah',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.0),
              TextFormField(
                controller: _namaPemilikController,
                decoration: InputDecoration(
                  labelText: 'Nama Pemilik',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama Pemilik tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _alamatController,
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Alamat tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _keteranganController,
                decoration: InputDecoration(
                  labelText: 'Keterangan',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Keterangan tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _fotoController,
                decoration: InputDecoration(
                  labelText: 'Foto',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Foto tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _submitData(context);
                  }
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
