/*
 * -> Author : Akko
 * -> Date : 2020-05-15 18:05:18
 * -> LastEditTime : 2020-05-15 20:32:35
 * -> LastEditors : Akko
 * -> Description : Vector main code
 * -> FilePath : \vector\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test'),
        backgroundColor: Colors.white,),
        body: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('test');
  }
}
