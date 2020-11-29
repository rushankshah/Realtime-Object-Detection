import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_realtime_detection/main.dart';
import 'package:flutter_realtime_detection/second_screen.dart';
import 'models.dart';

class HomePage extends StatefulWidget {
  final List<CameraDescription> cameras;

  HomePage(this.cameras);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> _recognitions;
  int _imageHeight = 0;
  int _imageWidth = 0;
  String _model = "";

  @override
  void initState() {
    super.initState();
  }


  onSelect(model) {
    setState(() {
      _model = model;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Realtime object detection'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: const Text(ssd),
              onPressed: () {
                onSelect(ssd);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondScreen(
                              cameras: cameras,
                              model: _model,
                            )));
              },
              color: Colors.lime,
            ),
            RaisedButton(
              child: const Text(yolo),
              onPressed: () {
                onSelect(yolo);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondScreen(
                              cameras: cameras,
                              model: _model,
                            )));
              },
              color: Colors.lime,
            ),
            RaisedButton(
              child: const Text(mobilenet),
              onPressed: () {
                onSelect(mobilenet);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondScreen(
                              cameras: cameras,
                              model: _model,
                            )));
              },
              color: Colors.lime,
            ),
            RaisedButton(
              child: const Text(posenet),
              onPressed: () {
                onSelect(posenet);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondScreen(
                              cameras: cameras,
                              model: _model,
                            )));
              },
              color: Colors.lime,
            ),
          ],
        ),
      ),
    );
  }
}
