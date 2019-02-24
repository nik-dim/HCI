import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mapbox_gl_example/pages/Info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  CameraScreen(this.cameras);

  @override
  CameraScreenState createState() {
    return new CameraScreenState();
  }
}

class CameraScreenState extends State<CameraScreen> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller =
        new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return new Container();
    }
    return
        // new CameraPreview(controller);
        new Scaffold(
      body: new Container(child: new CameraPreview(controller)),
      floatingActionButton: FloatingActionButton(
          child: Icon(FontAwesomeIcons.camera),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    // new AspectRatio(
    // aspectRatio: controller.value.aspectRatio,
    // child: new CameraPreview(controller),
    // );
  }
}
