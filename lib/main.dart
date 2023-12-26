// main.dart
import 'package:flutter/material.dart';
import 'package:ifchat/views/home.dart';
import 'package:ifchat/views/mot.dart'; // Import file mot.dart
import 'package:ifchat/views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IF Chat',
      theme: ThemeData(
        primaryColor:
            Color(0xFF36393F), // Sesuaikan dengan warna yang Anda inginkan
        scaffoldBackgroundColor: Color(0xFF36393F),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF36393F),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          headline6: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/', // Tetapkan rute awal
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginScreen(),
        '/mot': (context) => MotPage(), // Ubah rute untuk MotPage
      },
    );
  }
}
