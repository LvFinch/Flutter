/*
 * -> Author : Akko
 * -> Date : 2020-06-06 18:14:52
 * -> LastEditTime : 2020-06-08 17:04:16
 * -> LastEditors : Akko
 * -> Description : main
 * -> FilePath : \what\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:what/pages/home_page.dart';
import 'package:what/routes/test_route.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WHAT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "test_route" : (context) => TestRoute(),
      },
      home: MyHomePage(),
    );
  }
}
