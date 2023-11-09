import 'package:flutter/material.dart';

void main() {
  runApp(BeratBadanIdealApp());
}

class BeratBadanIdealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BeratBadanIdealScreen(),
    );
  }
}

class BeratBadanIdealScreen extends StatefulWidget {
  @override
  _BeratBadanIdealScreenState createState() => _BeratBadanIdealScreenState();
}

class _BeratBadanIdealScreenState extends State<BeratBadanIdealScreen> {
  double tinggi = 0.0;
  double beratBadan = 0.0;
  String hasil = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Pengukur Berat Badan Ideal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Masukkan Tinggi Badan (cm):',
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tinggi = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            Text(
              'Masukkan Berat Badan (kg):',
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  beratBadan = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                double tinggiMeters = tinggi / 100;
                double bmi = beratBadan / (tinggiMeters * tinggiMeters);

                setState(() {
                  if (bmi < 18.5) {
                    hasil = "Kurus";
                  } else if (bmi >= 18.5 && bmi < 24.9) {
                    hasil = "Normal";
                  } else if (bmi >= 25.0 && bmi < 29.9) {
                    hasil = "Gemuk";
                  } else {
                    hasil = "Obesitas";
                  }
                });

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Hasil Pengukuran'),
                      content: Text('BMI: $bmi\nKategori: $hasil'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Ukur Berat Badan Ideal'),
            ),
          ],
        ),
      ),
    );
  }
}
