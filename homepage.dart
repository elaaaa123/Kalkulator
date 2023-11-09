import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),
    body: Center(
      child: Text('Halaman Utama dengan Bottom Navigation'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
                ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
            Navigator.pushReplacement(context, '/home' as Route<Object?>);
              break;
              case 1:
              break;
              case 2:
          };
        },
      ),
  );
}
}