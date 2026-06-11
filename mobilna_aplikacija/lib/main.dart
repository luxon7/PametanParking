import 'package:flutter/material.dart';
import 'screens/login_ekran.dart'; // Uvozimo nas novi fajl!

void main() {
  runApp(const PametanParkingApp());
}

class PametanParkingApp extends StatelessWidget {
  const PametanParkingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pametan Parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginEkran(), // Ovde smo postavili LoginEkran kao pocetni!
    );
  }
}