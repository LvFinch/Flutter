/*
 * -> Author : Akko
 * -> Date : 2020-05-15 18:05:18
 * -> LastEditTime : 2020-05-16 21:18:39
 * -> LastEditors : Akko
 * -> Description : Vector main code
 * -> FilePath : \vector\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './home_page.dart';
import './app_bar.dart';
import './global.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

//MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: fighting ! Vector is coming ...
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          elevation: 0,
          title: VectorAppBarTitle(),
          toolbarOpacity: 1,
        ),
        body: HomePage(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text('主页')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), title: Text('设置'))
              ],
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
