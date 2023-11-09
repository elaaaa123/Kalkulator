import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biodata Saya'),
        ),
        body: BiodataWidget(),
      ),
    );
  }
}

class BiodataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Nama: Laela Hariska'),
          Text('Umur: 21 tahun'),
          Text('Alamat: Lombok'),
          Text('Email: laelahariska503@gmail.com'),
          Text('Telepon: 087765432432'),
        ],
      ),
    );
  }
}
