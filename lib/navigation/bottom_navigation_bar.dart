import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fr_parel/navigation/postes.dart';
import 'package:fr_parel/navigation/releves.dart';

import 'dashboard.dart';

class Racine extends StatefulWidget {
  static const routeName = "racine";
  @override
  _RacineState createState() => _RacineState();
}

class _RacineState extends State<Racine> {
  int currentIndex = 1;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        Releves(),
        Dashboard(),
        Postes(),
      ][currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: currentIndex,
        onTap: changePage,
        backgroundColor: Colors.white60,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.red,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.black87,
              icon: FaIcon(FontAwesomeIcons.listAlt, color: Colors.black),
              activeIcon: FaIcon(FontAwesomeIcons.listAlt, color: Colors.red),
              title: Text("Relevés")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black87,
              icon: FaIcon(FontAwesomeIcons.home, color: Colors.black),
              activeIcon: FaIcon(FontAwesomeIcons.home, color: Colors.red),
              title: Text("Accueil")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black87,
              icon: FaIcon(FontAwesomeIcons.tools, color: Colors.black),
              activeIcon: FaIcon(FontAwesomeIcons.tools, color: Colors.red),
              title: Text("Paramétrage")),
        ],
      ),
    );
  }
}
