/*
 * -> Author : Akko
 * -> Date : 2020-05-22 19:06:04
 * -> LastEditTime : 2020-05-22 19:31:38
 * -> LastEditors : Akko
 * -> Description : Help Route
 * -> FilePath : \doing\lib\routes\help.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

class HelpRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("帮助中心"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 244, 143, 177),
      ),
      body: Center(
        child: Text("This is help route"),
      ),
    );
  }
}