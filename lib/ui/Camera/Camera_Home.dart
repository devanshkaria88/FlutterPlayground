import 'package:flutter/material.dart';
import 'package:flutter_playground/values/imports.dart';
import 'package:camera/camera.dart';
import 'Camera.dart';

List<CameraDescription> cameras;

class Camerahome extends StatefulWidget {
  @override
  _CamerahomeState createState() => _CamerahomeState();
}

class _CamerahomeState extends State<Camerahome> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Cameras in Flutter'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.blue,
                height: 50.0,
                child: Text(
                  'Camera using Image Picker',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  cameras = await availableCameras();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return camerascreen(cameras);
                  }));
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.blue,
                  height: 50.0,
                  child: Text(
                    'Camera using Camera Plugin',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
