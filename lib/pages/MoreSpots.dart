import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreSpots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Where am I?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            children: [
              Text(
                'Near to             ',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Acropolis',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Exactly at         ',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Mouson 38',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
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
          _Button('MORE INFO'),
          _Button('SIMILAR'),
          _Button('DIRECTIONS'),
        ],
      ),
    );

    Widget suggestedSpots = Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Card(
          color: Colors.blue[100],
          child: new InkWell(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: new Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Suggested Spots',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/info');
                        },
                        child: _Cont('Acropolis', 'Distance: 400m',
                            'Arrival Time: 9:56 AM'),
                      ),
                      _Cont(
                          'Theatre of Dionysis',
                          'Distance: 4.1km via Leoforos Stadiou',
                          'Arrival Time: 9:56 AM'),
                      _Cont('Odeon of Herodes Atticus', 'Distance: 400m',
                          'Arrival Time: 9:56 AM'),
                      _Cont('Plaka', 'Distance: 400m', 'Arrival Time: 9:56 AM')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text('More Spots'),
      ),
      body: ListView(
        children: [titleSection, buttonSection, suggestedSpots],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  _Button(this.text);

  final String text;
  // IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () => print('hello'),
      child: new Container(
        //width: 100.0,
        height: 50.0,
        width: 100,
        decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border.all(color: Colors.blue, width: 1.0),
          borderRadius: new BorderRadius.circular(25.0),
        ),
        child: RaisedButton(
            padding: EdgeInsets.all(10),
            onPressed: () {
              if (text == 'MORE INFO') {
                Navigator.pushNamed(context, '/info');
              }
              // controller.setStyleUrl(Style.light);
            },
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            child: new Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.blue, fontSize: 13),
              ),
            )),
      ),
    );
  }
}

class _Cont extends StatelessWidget {
  _Cont(this.text1, this.text2, this.text3);

  final String text1;
  final String text2;
  final String text3;
  // IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () => print('hello'),
      child: new Container(
        padding: const EdgeInsets.all(3.0),
        decoration: new BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.blue),
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Text(
                  text2,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Text(
                  text3,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
