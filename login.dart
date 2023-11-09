import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    // Tambahkan rute-rute lain di sini jika diperlukan
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('login'),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
