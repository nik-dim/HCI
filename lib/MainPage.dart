import 'dart:async';
import 'dart:io';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'pages/about.dart';
import 'pages/charts.dart';
import 'pages/explore.dart';
import 'pages/places.dart';
import 'pages/profile.dart';
import 'pages/search.dart';
import 'pages/settings.dart';
import 'pages/cameraApp.dart';
import 'pages/Info.dart';
import 'package:camera/camera.dart';
import 'pages/MoreSpots.dart';
// import 'pages/Info.dart';
import 'pages/cameraPOP.dart';

class MainPage extends StatefulWidget {
  final cameras;
  MainPage(this.cameras);
  @override
  _MainPageDemo createState() => new _MainPageDemo();
}

class _MainPageDemo extends State<MainPage> {
  List<CameraDescription> cameras;
  File cameraFile;

  // final MapboxOverlayController controller = new MapboxOverlayController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Homescreen'),
        backgroundColor: Colors.blue.withOpacity(1),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
              // controller.setStyleUrl(Style.light);
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Brasidasss Hlebouras"),
              accountEmail: Text("Athens, GR"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: IconButton(
                  icon: Icon(Icons.face),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.map),
              title: new Text('Explore'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Explore()),
                );
              },
            ),
            new ListTile(
              leading: const Icon(Icons.place),
              title: new Text('Places'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Places()),
                );
              },
            ),
            new ListTile(
              leading: const Icon(Icons.group),
              title: new Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
            new ListTile(
              leading: const Icon(Icons.settings),
              title: new Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            new ListTile(
              leading: const Icon(Icons.show_chart),
              title: new Text('Charts'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Charts()),
                );
              },
            ),
            new ListTile(
              leading: const Icon(Icons.search),
              title: new Text('Search'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
            ),
            new ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: new Text('Logout'),
              onTap: () => exit(0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  // CameraPOP(),
                  CameraScreen(widget.cameras),
            ),
          );
        },
        tooltip: 'Capture the moment!',
        child: Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Stack(
        children: <Widget>[
          new Container(
              child: new FlutterMap(
                  options: new MapOptions(
                      center: new LatLng(37.9715, 23.7257), minZoom: 4.0),
                  layers: [
                new TileLayerOptions(
                    urlTemplate:
                        "https://api.mapbox.com/styles/v1/nikdim/cjs3ulcta02rq1fl3chj6172i/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibmlrZGltIiwiYSI6ImNqczB3dzdlYzFvMjYzeW5yNDRnOTh1ZWgifQ.HvrYwdgkV7jq7b7FNqnfEw",
                    additionalOptions: {
                      'accessToken':
                          'pk.eyJ1IjoibmlrZGltIiwiYSI6ImNqczB3dzdlYzFvMjYzeW5yNDRnOTh1ZWgifQ.HvrYwdgkV7jq7b7FNqnfEw',
                      'id': 'mapbox.mapbox-streets-v7'
                    }),
                new MarkerLayerOptions(markers: [
                  new Marker(
                      width: 45.0,
                      height: 45.0,
                      point: new LatLng(37.9740, 23.7259),
                      builder: (context) => new Container(
                            child: IconButton(
                              icon: Icon(Icons.location_on),
                              color: Colors.blue,
                              iconSize: 45.0,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Info()),
                                );
                              },
                            ),
                          ))
                ])
              ])),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MoreSpots()));
                      },
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.my_location,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
                          Text(
                            'Where am I ?',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                  SizedBox(height: 20)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/local_style.json');
  }
}
