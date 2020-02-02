import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/pages/camera.dart';
//import 'package:latihan/pages/homepage.dart';
//import 'package:latihan/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: CameraPage(
        //controller: this.controller,
      ),
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          textTheme: GoogleFonts.robotoMonoTextTheme(Theme.of(context).textTheme)),
    );
  }
}
