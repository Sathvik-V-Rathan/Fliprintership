import 'package:flutter/material.dart';
import 'package:C19SVRflipr/ui/colors.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: Center(
              child: Column(children: <Widget>[
        Container(
          color: Bgcolor,
          margin: EdgeInsets.all(20),
          child: Table(
            defaultColumnWidth: FixedColumnWidth(120.0),
            border: TableBorder.all(
                color: Colors.grey.shade100, style: BorderStyle.solid, width: 2),
            children: [
              TableRow(children: [
                Column(
                    children: [Text('Date', style: TextStyle(fontSize: 20.0))]),
                Column(children: [
                  Text('Notification title', style: TextStyle(fontSize: 20.0))
                ]),
                Column(
                    children: [Text('Link', style: TextStyle(fontSize: 20.0))]),
              ]),
              TableRow(children: [
                Column(children: [Text('01.01.2021')]),
                Column(children: [
                  Text(
                      'SOP for the new variant of SARS-CoV-2 in the context of regulated resumption of limited flights originating from United Kingdom (UK) to India from 8th January 2021')
                ]),
                Column(children: [
                  Text(
                      'https://www.mohfw.gov.in/pdf/SOPforthenewvariantofSARSCoV2inthecontextofregulatedresumptionoflimitedflightsoriginatingfromUnitedKingdomUKtoIndiafrom8thJanuary2021.pdf')
                ]),
              ]),
              TableRow(children: [
                Column(children: [Text('22.12.2020')]),
                Column(children: [
                  Text(
                      'SOP for Surveillance and response for the new SARS Cov-2 variant')
                ]),
                Column(children: [
                  Text(
                      'https://www.mohfw.gov.in/pdf/SOPforSurveillanceandresponseforthenewSARSCov2variant.pdf')
                ]),
              ]),
              TableRow(children: [
                Column(children: [Text('"02.08.2020')]),
                Column(children: [
                  Text('Revised guidelines for International Arrivals')
                ]),
                Column(children: [
                  Text(
                      'https://www.mohfw.gov.in/pdf/RevisedguidelinesforInternationalArrivals02082020.pdf')
                ]),
              ]),
            ],
          ),
        ),
      ]))),
    );
  }
}
