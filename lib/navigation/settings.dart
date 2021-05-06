import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static const routeName = "settings";
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('data'));
  }
}
