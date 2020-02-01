import 'package:flutter/material.dart';
import 'package:latihan/layout.dart';

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: <Color>[Colors.blue[900], Colors.blue[300], Colors.blue[700]],
        )),
        child: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.blockVertical * 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Text("  Masuk",
                        style: TextStyle(
                          fontSize: 50,
                        )),
                    onTap: () {
                      print("Masuk");
                    },
                  ),
                  GestureDetector(
                    child: Text("Daftar  ",
                        style:
                            TextStyle(fontSize: 30, color: Colors.grey[800])),
                    onTap: () {
                      print("Daftar");
                    },
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockVertical * 3,
              ),
              Center(
                  child: Container(
                      child: FlutterLogo(
                size: 150,
              ))),
              SizedBox(
                height: SizeConfig.blockVertical * 3,
              ),
              Container(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Alamat Email",
                  prefixIcon: Icon(Icons.mail),
                )),
              ),
              SizedBox(
                height: SizeConfig.blockVertical * 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Kata Sandi",
                      prefixIcon: Icon(Icons.lock),
                    )),
              ),
              SizedBox(
                height: SizeConfig.blockVertical * 5,
              ),
              Center(
                child: RaisedButton(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockHorizontal * 18,
                        right: SizeConfig.blockHorizontal * 18,
                        top: SizeConfig.blockVertical * 2,
                        bottom: SizeConfig.blockVertical * 2),
                    color: Colors.blue[800],
                    child: Text(
                      "Masuk",
                      style: TextStyle(fontSize: 20),
                    ),
                    elevation: 10,
                    onPressed: () {}),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
