import 'package:flutter/material.dart';
import 'package:flutter_calculator/login.dart';

void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
    // Tambahkan rute-rute lain di sini jika diperlukan
  ));
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String username = "";
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                username = value;
              },
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                // Proses pendaftaran di sini
                final sharedPreferences = await SharedPreferences.getInstance();
                sharedPreferences.setString('username', username);
                sharedPreferences.setString('password', password);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}

class SharedPreferences {
  static getInstance() {}
}
