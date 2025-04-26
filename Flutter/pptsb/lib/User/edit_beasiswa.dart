import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EditBeasiswaPage extends StatefulWidget {
  final Map<String, dynamic> beasiswa;

  EditBeasiswaPage({required this.beasiswa});

  @override
  _EditBeasiswaPageState createState() => _EditBeasiswaPageState();
}

class _EditBeasiswaPageState extends State<EditBeasiswaPage> {
  late TextEditingController _namaController;
  late TextEditingController _alamatController;
  late TextEditingController _nilaiRaporController;
  late TextEditingController _keteranganController;

  @override
  void initState() {
    super.initState();
    _namaController = TextEditingController(text: widget.beasiswa['nama']);
    _alamatController = TextEditingController(text: widget.beasiswa['alamat']);
    _nilaiRaporController = TextEditingController(text: widget.beasiswa['nilai_rapor']);
    _keteranganController = TextEditingController(text: widget.beasiswa['keterangan']);
  }

  Future<void> _updateBeasiswa() async {
    final response = await http.put(
      Uri.parse("http://127.0.0.1:8000/api/beasiswa/${widget.beasiswa['id']}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'nama': _namaController.text,
        'alamat': _alamatController.text,
        'nilai_rapor': _nilaiRaporController.text,
        'keterangan': _keteranganController.text,
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Data successfully updated')),
      );
      Navigator.pop(context, "data-updated");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to update data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Data Request Beasiswa',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.0),
            TextFormField(
              controller: _namaController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _alamatController,
              decoration: InputDecoration(
                labelText: 'Alamat',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _nilaiRaporController,
              decoration: InputDecoration(
                labelText: 'Nilai Rapor',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _keteranganController,
              decoration: InputDecoration(
                labelText: 'Keterangan',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _updateBeasiswa,
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}