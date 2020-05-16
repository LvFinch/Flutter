/*
 * -> Author : Akko
 * -> Date : 2020-05-16 11:13:57
 * -> LastEditTime : 2020-05-16 11:21:26
 * -> LastEditors : Akko
 * -> Description : Vector AppBar Code
 * -> FilePath : \vector\lib\app_bar.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */

import 'package:flutter/widgets.dart';

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
    DateTime _nowTime = DateTime.now();
    // DateFormat _NowTime = DateFormat.HOUR_MINUTE;
    // _NowTime = DateFormat.HOUR_MINUTE;
    // if (_NowTime ) {

    // } else {
    // }

    return Container(
      child: Text("$_nowTime good night"),
    );
  }
}
