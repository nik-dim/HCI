import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/Info.dart';

class CameraPOP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Alternative"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info()));
          },
          child: Center(
            child: Icon(Icons.camera, color: Colors.blue, size: 100),
          ),
        ),
      ),
    );
  }
}
