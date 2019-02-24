import 'dart:async';

import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'package:camera/camera.dart';
import 'pages/Info.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String, WidgetBuilder>{
        '/info': (BuildContext context) => new Info(),
        '/home': (BuildContext context) => new MainPage(cameras),
      },
      title: 'HCI Demo',
      home: new SplashScreen(),
      //  new MainPage(cameras),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/pop.png'),
      ),
    );
  }
}
