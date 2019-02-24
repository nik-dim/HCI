import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Charts extends StatelessWidget {
  final List<charts.Series> seriesList = _createSampleData();
  final bool animate;

  Charts({this.animate});

  factory Charts.withSampleData() {
    return new Charts(
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Charts"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                'Total Points Per month',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(32),
              child: new charts.BarChart(
                seriesList,
                animate: animate,
              ),
            )),
            Container(
                padding: const EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('4708',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            )),
                        Text('steps today',
                            style: TextStyle(
                              color: Colors.blue,
                            ))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('232',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            )),
                        Text('points today',
                            style: TextStyle(
                              color: Colors.blue,
                            ))
                      ],
                    ),
                  ],
                ))
          ],
        ));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    const num = 100;
    final data = [
      new OrdinalSales('Jan', 5 * num),
      new OrdinalSales('Feb', 10 * num),
      new OrdinalSales('Mar', 15 * num),
      new OrdinalSales('Apr', 20 * num),
      new OrdinalSales('May', 23 * num),
      new OrdinalSales('June', 30 * num),
      new OrdinalSales('July', 8 * num),
      new OrdinalSales('Aug', 5 * num)
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
