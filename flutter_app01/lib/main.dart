import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Too late')),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

//
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
      'Hello AkkoYan',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40.0,
        color: Colors.black,
      ),
    ));
  }
}
