import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginApp(),
      theme: ThemeData(
          primarySwatch: Colors.brown,
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)),
    );
  }
}
