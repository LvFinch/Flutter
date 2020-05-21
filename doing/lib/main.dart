/*
 * -> Author : Akko
 * -> Date : 2020-05-20 17:06:25
 * -> LastEditTime : 2020-05-21 23:13:14
 * -> LastEditors : Akko
 * -> Description : Main
 * -> FilePath : \doing\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */

import 'package:doing/pages/home_page.dart';
import 'package:doing/routes/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "test_route": (context) => TestRoute(),
        "home_page":(context)=> DoingHomePage(title: "test route",),
      },
      home: DoingHomePage(
        title: "Doing",
      ),
    );
  }
}
