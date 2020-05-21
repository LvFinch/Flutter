/*
 * -> Author : Akko
 * -> Date : 2020-05-21 23:09:08
 * -> LastEditTime : 2020-05-21 23:11:07
 * -> LastEditors : Akko
 * -> Description : test route
 * -> FilePath : \doing\lib\routes\test.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

class TestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}