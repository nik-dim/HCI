import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';

class CustomIcons {
  CustomIcons._();

  static const _kFontFam = 'CustomIcons';

  static const IconData heart = const IconData(0xe800, fontFamily: _kFontFam);
  static const IconData quote_left =
      const IconData(0xe801, fontFamily: _kFontFam);
  static const IconData instagram =
      const IconData(0xf16d, fontFamily: _kFontFam);
  static const IconData facebook_squared =
      const IconData(0xf30e, fontFamily: _kFontFam);
}

class Info extends StatelessWidget {
  final List<String> images = <String>[
    "assets/acropolis.jpg",
    "assets/map.png",
    "assets/2.jpg",
    "assets/3.jpeg",
    "assets/map.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Info"),
        ),
        body: new Column(
          children: <Widget>[
            CarouselSlider(
              height: 170.0,
              items: [0, 1, 2, 3, 4].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return new Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[i]),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: new Text(
                'Acropolis',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(10.0),
              child: new Text(
                'Ancient citadel located on a rocky outcrop above the city of Athens and contains the Parthenon',
                softWrap: true,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(20.0),
              child: new Text(
                'Every four years, the Athenians had a festival called the Panathenaea that rivaled the Olympic Games in popularity. During the festival, a procession (believed to be depicted on the Parthenon frieze) traveled through the city via the Panathenaic Way and culminated on the Acropolis. There, a new robe of woven wool (peplos) was placed on either the statue of Athena Polias in the Erechtheum (during a regular Panathenaea) or on the statue of Athena Parthenos in the Parthenon (during the Great Panathenaea, held every four years).',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FontAwesomeIcons.heartbeat, color: Colors.blue),
                Icon(FontAwesomeIcons.quoteLeft, color: Colors.blue),
                Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                Icon(FontAwesomeIcons.instagram, color: Colors.blue),
              ],
            ),
          ],
        ));
  }
}
