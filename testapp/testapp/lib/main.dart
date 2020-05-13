/*
 * -> Author : Akko
 * -> Date : 2020-05-13 14:09:35
 * -> LastEditTime : 2020-05-13 15:06:59
 * -> LastEditors : Akko
 * -> Description : 
 * -> FilePath : \testapp\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to First App'),
        ),
        body: Center(
          child: Text('Hello Akko !'),
        ),
      ),
    );
  }
}