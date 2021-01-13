import 'package:flutter/material.dart';
import 'package:C19SVRflipr/ui/colors.dart';

class Worldlist extends StatefulWidget {
  @override
  _WorldlistState createState() => _WorldlistState();
}

class _WorldlistState extends State<Worldlist> {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: Center(
              child: Column(children: <Widget>[
        Container(
          color: Bgcolor,
          margin: EdgeInsets.all(7),
          child: Table(
            defaultColumnWidth: FixedColumnWidth(50.0),
            border: TableBorder.all(
                color: Colors.grey.shade100, style: BorderStyle.solid, width: 1),
            children: [
              TableRow(children: [
                 Column(
                    children: [Text('State name', style: TextStyle(fontSize: 10.0))]),
                Column(children: [
                  Text('Rural Hospital', style: TextStyle(fontSize: 10.0))
                ]),
                Column(children: [
                  Text('Rural beds', style: TextStyle(fontSize: 10.0))
                ]),
                Column(children: [
                  Text('Urban Hospital', style: TextStyle(fontSize: 10.0))
                ]),
                Column(children: [
                  Text('Urban beds', style: TextStyle(fontSize: 10.0))
                ]),
                Column(children: [
                  Text('Total hospital', style: TextStyle(fontSize: 10.0))
                ]),
               Column(children: [
                  Text('Total beds', style: TextStyle(fontSize: 10.0))
                ]),
              ]),
              TableRow(children: [
                Column(children: [Text('Andra pradesh')]),
                Column(children: [Text('193')]),
                Column(children: [Text('6480')]),
                Column(children: [Text('65')]),
                Column(children: [Text('16658')]),
                Column(children: [Text('358')]),
                Column(children: [Text('23138')]),

              ]),
              TableRow(children: [
                Column(children: [Text('Arunachal pradesh')]),
                Column(children: [Text('208')]),
                Column(children: [Text('2136')]),
                Column(children: [Text('65')]),
                Column(children: [Text('268')]),
                Column(children: [Text('218')]),
                Column(children: [Text('2404')]),


              ]),
              TableRow(children: [
                Column(children: [Text('Assam')]),
                Column(children: [Text('1176')]),
                Column(children: [Text('10944')]),
                Column(children: [Text('50')]),
                Column(children: [Text('06198')]),
                Column(children: [Text('1226')]),
                Column(children: [Text('17142')]),

              ]),
              TableRow(children: [
                Column(children: [Text('Bihar')]),
                Column(children: [Text('930')]),
                Column(children: [Text('6083')]),
                Column(children: [Text('103')]),
                Column(children: [Text('5936')]),
                Column(children: [Text('1033')]),
                Column(children: [Text('12019')]),

              ]),


            ],
          ),
        ),
      ]))),
    );
  }
}
