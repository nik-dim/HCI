import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(4, 1),
  StaggeredTile.count(4, 1),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(4, 1),
];

List<Widget> _tiles = <Widget>[
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
  new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.dashboard, color: Colors.blue),
      Icon(Icons.restaurant_menu, color: Colors.blue),
      Icon(Icons.local_bar, color: Colors.blue),
      Icon(Icons.local_gas_station, color: Colors.blue)
    ],
  ),
  _Example01Tile(1),
  _Example01Tile(2),
  _Example01Tile(3),
  _Example01Tile(4),
  _Example01Tile(5),
  _Example01Tile(6),
  _Example01Tile(7),
  _Example01Tile(8),
  _Example01Tile(8),
  _Example01Tile(10),
];

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Explore'),
      ),
      body: Container(
        child: new Container(
          padding: const EdgeInsets.only(top: 12.0),
          child: new StaggeredGridView.count(
            crossAxisCount: 4,
            staggeredTiles: _staggeredTiles,
            children: _tiles,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            padding: const EdgeInsets.all(4.0),
          ),
        ),
      ),
    );
  }
}

class _Example01Tile extends StatelessWidget {
  final List<String> images = <String>[
    "assets/acropolis.jpg",
    "assets/2.jpg",
    "assets/3.jpeg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.jpg",
    // "assets/7.jpg",
    "assets/8.jpg",
    "assets/9.jpg",
    "assets/10.jpg",
    "assets/11.jpg",
    "assets/acropolis.jpg",
    "assets/map.png",
  ];
  _Example01Tile(this.i);

  final int i;

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(images[i]),
        ),
      ),
    );
  }
}
