/*
 * -> Author : Akko
 * -> Date : 2020-06-08 15:08:28
 * -> LastEditTime : 2020-06-08 15:16:53
 * -> LastEditors : Akko
 * -> Description : test route
 * -> FilePath : \what\lib\routes\test_route.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

class TestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test route"),
      ),
      body: Center(
        child: Text("This is test route"),
      ),
    );
  }
}