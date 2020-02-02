import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController _controller;
  Future<void> _controllerInizializer;

  Future<CameraDescription> getCamera() async {
    final c = await availableCameras();
    return c.first;
  }

  @override
  void initState() {
    super.initState();

    getCamera().then((camera) {
      setState(() {
        _controller = CameraController(camera, ResolutionPreset.high);
        _controllerInizializer = _controller.initialize();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned.fill(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.settings, color: Colors.white,),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.enhanced_encryption, color: Colors.white),
              )
            ],
          ),
            body: FutureBuilder(
                future: _controllerInizializer,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CameraPreview(_controller);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })),
      ),
    ]);
  }
}
