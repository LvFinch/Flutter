/*
 * -> Author : Akko
 * -> Date : 2020-05-20 17:06:25
 * -> LastEditTime : 2020-05-20 23:07:24
 * -> LastEditors : Akko
 * -> Description : Main
 * -> FilePath : \doing\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */

import 'package:doing/pages/test/wrap_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),//Default Homepage
      home: WrapWidget(),
    );
  }
}
