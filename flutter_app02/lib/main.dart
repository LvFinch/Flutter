import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//主框架
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('demo test'),
            ),
            body: HomeContent()));
  }
}

//主页
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        'Hello Akko',
        textAlign: TextAlign.center, //对齐
        overflow: TextOverflow.ellipsis, //文本超出后显示方式
        maxLines: 1, //最大显示行数
        textScaleFactor: 2, //字体放大
        style: TextStyle(
            fontSize: 16.0, //字体大小
            decoration: TextDecoration.lineThrough, //划线的方法
            decorationColor: Colors.red, //划线颜色
            decorationStyle: TextDecorationStyle.dotted, //划的线样式
            letterSpacing: 1.0 //字间距
            ),
      ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(
          color: Colors.blue,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      padding: EdgeInsets.all(10), //与四边内距离
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10), //外边距
      //transform: Matrix4.translationValues(0, 0, 0),//组件位移
      //transform:Matrix4.rotationZ(20),//组件旋转
      transform: Matrix4.diagonal3Values(1, 1, 1), //组件缩放
      alignment: Alignment.bottomLeft,//设置对齐方式
    ));
  }
}
