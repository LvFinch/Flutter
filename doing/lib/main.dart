/*
 * -> Author : Akko
 * -> Date : 2020-05-20 17:06:25
 * -> LastEditTime : 2020-05-22 19:23:32
 * -> LastEditors : Akko
 * -> Description : Main
 * -> FilePath : \doing\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */

import 'dart:io';

import 'package:doing/pages/home_page.dart';
import 'package:doing/routes/help.dart';
import 'package:doing/routes/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doing',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "test_route": (context) => TestRoute(),
        "help_route": (context) => HelpRoute(),
        "home_page": (context) => DoingHomePage(
              title: "test route",
            ),
      },
      home: DoingHomePage(
        title: "Doing",
      ),
    );
  }
}
