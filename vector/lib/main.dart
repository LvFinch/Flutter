/*
 * -> Author : Akko
 * -> Date : 2020-05-15 18:05:18
 * -> LastEditTime : 2020-05-16 00:54:04
 * -> LastEditors : Akko
 * -> Description : Vector main code
 * -> FilePath : \vector\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'dart:io';
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

//MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: fighting ! Vector is coming ...
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          // elevation: 0,
          // leading: VectorAppBarLeading(),
          title: VectorAppBarTitle(),
        ),
        body: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

//MyApp => MaterialApp => Scaffold => AppBar => VectorAppBarTitle
class VectorAppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: AppBar Title
    return VectorAppBarTitleHint();
  }
}

//MyApp => MaterialApp => Scaffold => AppBar => VectorAppBarTitle => VectorAppBarTitleHint
class VectorAppBarTitleHint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    DateTime NowTime = DateTime.now();
    

    return Container(child: Text("$NowTime night"),);
  }
}

// //MyApp => MaterialApp => Scaffold => AppBar => VectorAppBarLeading
// class VectorAppBarLeading extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //TODO: Delay! AppBar Leading
//     return Container(
//       child: Image.asset(
//         'images/vector.png',
//         height: 5,
//         width: 5,
//       ),
//     );
//   }
// }

//MyApp => MaterialApp => Scaffold => HomePage
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('别看了,还没写');
  }
}
