import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Icon(Icons.face, size: 50, color: Colors.blue),
          ),
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Brasidas Hlebouras',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Currently In Athens, GR',
                  style: TextStyle(
                    color: Colors.blue[400],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(FontAwesomeIcons.facebookF, color: Colors.blue[500], size: 40),
          Icon(FontAwesomeIcons.instagram, color: Colors.blue[500], size: 40),
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  '140',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'SPOTS',
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  '140KM',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'THIS WEEK',
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'TOP 3%',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'TRAVELLER',
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              ),
            ],
          ),
        ],
      ),
    );

    Widget lastWeek = Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Card(
          color: Colors.blue[100],
          child: new InkWell(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: new Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'LAST WEEK',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Card(
                        color: Colors.blue[300],
                        child: new InkWell(
                          onTap: () {},
                          child: new Center(
                            child: new Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 30),
                              child: new Icon(
                                Icons.face,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new Card(
                        color: Colors.blue[300],
                        child: new InkWell(
                          onTap: () {},
                          child: new Center(
                            child: new Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 30),
                              child: new Icon(
                                Icons.face,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));

    Widget history = Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          color: Colors.blue[100],
          child: new InkWell(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: new Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'HISTORY',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Card(
                        color: Colors.blue[300],
                        child: new InkWell(
                          onTap: () {},
                          child: new Center(
                            child: new Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: new Icon(
                                Icons.face,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new Card(
                        color: Colors.blue[300],
                        child: new InkWell(
                          onTap: () {},
                          child: new Center(
                            child: new Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: new Icon(
                                Icons.face,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new Card(
                        color: Colors.blue[300],
                        child: new InkWell(
                          onTap: () {},
                          child: new Center(
                            child: new Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: new Icon(
                                Icons.face,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: ListView(
        children: [titleSection, buttonSection, lastWeek, history],
      ),
    );
  }
}
