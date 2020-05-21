/*
 * -> Author : Akko
 * -> Date : 2020-05-21 16:05:11
 * -> LastEditTime : 2020-05-21 21:49:49
 * -> LastEditors : Akko
 * -> Description : launch page
 * -> FilePath : \doing\lib\pages\launch_page.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
// import 'package:flutter/material.dart';
// import 'package:fluttie/fluttie.dart';

// class LaunchPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _LaunchPageState();
// }

// class _LaunchPageState extends State<LaunchPage> {
//   FluttieAnimationController whaleController, starController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//       Container(
//           width: 280.0,
//           height: 200.0,
//           child: FluttieAnimation(whaleController)),
//       Container(child: FluttieAnimation(starController)),
//       Row(children: <Widget>[
//         Expanded(
//             flex: 1,
//             child: FlatButton(
//                 onPressed: () {
//                   starController.start();
//                 },
//                 child: Text('start'))),
//         Expanded(
//             flex: 1,
//             child: FlatButton(
//                 onPressed: () {
//                   starController.pause();
//                 },
//                 child: Text('pause'))),
//         Expanded(
//             flex: 1,
//             child: FlatButton(
//                 onPressed: () {
//                   starController.unpause();
//                 },
//                 child: Text('resume'))),
//         Expanded(
//             flex: 1,
//             child: FlatButton(
//                 onPressed: () {
//                   starController.stopAndReset(rewind: false);
//                 },
//                 child: Text('stop')))
//       ])
//     ])));
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     whaleController?.dispose();
//     starController?.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     prepareLottie();
//   }

//   void prepareLottie() async {
//     var instance = Fluttie();
//     var whaleLottie =
//         await instance.loadAnimationFromAsset('assets/lotties/launch1.json');
//     whaleController = await instance.prepareAnimation(whaleLottie,
//         repeatCount: const RepeatCount.nTimes(2));

//     var starLottie = await instance.loadAnimationFromAsset('assets/lotties/launch1.json');
//     starController = await instance.prepareAnimation(starLottie,
//         repeatCount: const RepeatCount.infinite(),
//         repeatMode: RepeatMode.START_OVER);

//     setState(() {
//       whaleController.start();
//       starController.start();
//     });
//   }
// }

import 'package:doing/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startHome();
  }

  //显示2秒后跳转到HomeTabPage
  startHome() async {
    await Future.delayed(const Duration(milliseconds: 20000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => DoingHomePage(
                  title: "doing123",
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("test"),
            Text("test"),
          ]),
    ));
  }
}
