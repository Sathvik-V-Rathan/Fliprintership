import 'package:C19SVRflipr/ui/colors.dart';
import 'package:C19SVRflipr/ui/LandingScreen.dart';
import 'package:C19SVRflipr/ui/Notification.dart';
import 'package:C19SVRflipr/ui/dashboard.dart';
import 'package:C19SVRflipr/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:line_icons/line_icons.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Bgcolor, fontFamily: 'Staatliches'),
      home: StartScreen()));
}

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Welcome(),
    Overview(),
    Worldlist(),
    HomePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Bgcolor, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.white.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
            child: GNav(
                gap: 3,
                activeColor: Colors.white,
                color: Colors.white,
                iconSize: 23,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.grey[800],
                tabs: [
                  GButton(
                    icon: LineIcons.phone,
                    text: 'Helpline',
                  ),
                  GButton(
                    icon: LineIcons.envelope,
                    text: 'Notification',
                  ),
                  GButton(
                    icon: LineIcons.dashboard,
                    text: 'dashboard',
                  ),
                  GButton(
                    icon: LineIcons.bar_chart,
                    text: 'stats',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
