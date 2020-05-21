/*
 * -> Author : Akko
 * -> Date : 2020-05-20 23:50:55
 * -> LastEditTime : 2020-05-21 16:33:52
 * -> LastEditors : Akko
 * -> Description : Home Page
 * -> FilePath : \doing\lib\pages\home_page.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DoingHomePage extends StatefulWidget {
  DoingHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DoingHomePageState createState() => _DoingHomePageState();
}

class _DoingHomePageState extends State<DoingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 135, 232, 222),
      ),
      body: Center(
        child: Text("test"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 255, 192, 105),
        elevation: 2.0,
        mini: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 244, 143, 177),
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 50.0,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Icon(
                    Feather.home,
                    size: 30,
                    color: Color.fromARGB(255, 115, 166, 212),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Icon(
                    Icons.lightbulb_outline,
                    size: 31,
                    color: Color.fromARGB(255, 115, 166, 212),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Icon(
                    MaterialIcons.data_usage,
                    size: 30,
                    color: Color.fromARGB(255, 115, 166, 212),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
