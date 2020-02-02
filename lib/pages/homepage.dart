import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.controller}) : super(key: key);

  final PageController controller;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Beranda"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            widget.controller.animateToPage(
              0,
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          child: Padding(
              padding: EdgeInsets.all(14), child: Icon(Icons.camera_alt)),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Homepage"),
        ),
      ),
    );
  }
}
