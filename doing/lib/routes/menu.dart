/*
 * -> Author : Akko
 * -> Date : 2020-05-25 09:47:58
 * -> LastEditTime : 2020-05-25 09:47:59
 * -> LastEditors : Akko
 * -> Description : 
 * -> FilePath : \doing\lib\routes\menu.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/provider/simple_hidden_drawer_provider.dart';

class Menu extends StatefulWidget {
    @override
    _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
    @override
    Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.cyan,
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                FlatButton(
                    child: Text("菜单一",style: TextStyle(color: Colors.white,fontSize: 20)),
                    onPressed: (){
                        SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(0);
                    },
                ),
                FlatButton(
                    child: Text("菜单二",style: TextStyle(color: Colors.white,fontSize: 20)),
                    onPressed: (){
                        SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(1);
                    },
                )
            ],
        ),
    );
    }
}
