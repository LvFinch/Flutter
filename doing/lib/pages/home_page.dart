/*
 * -> Author : Akko
 * -> Date : 2020-05-20 23:50:55
 * -> LastEditTime : 2020-05-20 23:54:21
 * -> LastEditors : Akko
 * -> Description : Home Page
 * -> FilePath : \doing\lib\pages\home_page.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}
