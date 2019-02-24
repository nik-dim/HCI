import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/Info.dart';

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Explore'),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: new Row(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.blue),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          new Expanded(
            child: new Container(
              child: new GridView.count(
                padding: const EdgeInsets.all(10.0),
                crossAxisSpacing: 10.0,
                childAspectRatio: 2,
                crossAxisCount: 1,
                children: <Widget>[
                  _Example01Tile(Colors.blue, Icons.widgets),
                  _Example01Tile(Colors.lightBlue, Icons.camera_enhance),
                  _Example01Tile(Colors.amber, Icons.panorama_wide_angle),
                  _Example01Tile(Colors.brown, Icons.map),
                  _Example01Tile(Colors.deepOrange, Icons.send),
                  _Example01Tile(Colors.indigo, Icons.airline_seat_flat),
                  _Example01Tile(Colors.red, Icons.bluetooth),
                  _Example01Tile(Colors.pink, Icons.battery_alert),
                  _Example01Tile(Colors.purple, Icons.desktop_windows),
                  _Example01Tile(Colors.blue, Icons.cake),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Example01Tile extends StatelessWidget {
  _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Info()));
        },
        child: Container(
          padding: EdgeInsets.all(10),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name of the Place',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'Location',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
