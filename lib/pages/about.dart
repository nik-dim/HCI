import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget top = new Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: const BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: const AssetImage("assets/map.png"),
        ),
      ),
      // child: new Text("Hello"),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'History on the Spot',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            children: [
              Text(
                'Αλληλεπίδραση Ανθρώπου Μηχανής',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Button('Δημητριάδης', 'Νικόλαος'),
          _Button('Μακρής', 'Γεώργιος'),
          _Button('Τσιούρβας', 'Αστέριος'),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: ListView(
        children: [
          top,
          titleSection,
          buttonSection,
          SizedBox(height: 25),
          _Semester()
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  _Button(this.text1, this.text2);

  final text1;
  final text2;

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () => print('hello'),
      child: new Container(
          //width: 100.0,
          height: 120.0,
          width: 100,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: new BoxDecoration(
            color: Colors.white,
            border: new Border.all(color: Colors.blue, width: 1.0),
            borderRadius: new BorderRadius.circular(15.0),
          ),
          child: new Column(
            children: <Widget>[
              Icon(Icons.face, size: 50, color: Colors.blue),
              SizedBox(height: 10),
              new Text(
                text1,
                style: new TextStyle(
                    fontSize: 13.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              new Text(
                text2,
                style: new TextStyle(
                    fontSize: 13.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}

class _Semester extends StatelessWidget {
  _Semester();

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () => print('hello'),
      child: new Container(
          height: 120.0,
          width: 100,
          padding: EdgeInsets.all(10),
          child: new Row(
            children: <Widget>[
              Icon(Icons.calendar_today, size: 50, color: Colors.blue),
              SizedBox(width: 20),
              new Text(
                'Χειμερινό Εξάμηνο 2019',
                style: new TextStyle(
                    fontSize: 23.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
