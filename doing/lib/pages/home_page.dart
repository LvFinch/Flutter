/*
 * -> Author : Akko
 * -> Date : 2020-05-20 23:50:55
 * -> LastEditTime : 2020-05-25 11:04:44
 * -> LastEditors : Akko
 * -> Description : Home Page
 * -> FilePath : \doing\lib\pages\home_page.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doing/routes/help.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DoingHomePage extends StatefulWidget {
  DoingHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DoingHomePageState createState() => _DoingHomePageState();
}

class _DoingHomePageState extends State<DoingHomePage> with TickerProviderStateMixin{
  TabController tabController;
  List colors = [Colors.blue, Colors.pink, Colors.orange];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3)
      ..addListener(() {
        setState(() {
          currentIndex = tabController.index;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Text("Header"),
      //         decoration: BoxDecoration(
      //           color: Color.fromARGB(255, 255, 6, 6),
      //         ),
      //       ),
      //       Icon(
      //         AntDesign.folder1,
      //       ),
      //       Icon(AntDesign.folderopen),
      //       Icon(AntDesign.github),
      //     ],
      //   ),
      // ),
      // body: CustomScrollView(
      //   slivers: <Widget>[
      ///First sliver is the App Bar
      //     SliverAppBar(
      //       elevation: 1.0,
      //       backgroundColor: Color.fromARGB(255, 135, 232, 222),
      //       floating: false, //true立刻收起,false跟随收起
      //       pinned: true,
      //       expandedHeight: 250.0,
      //       actions: <Widget>[
      //         PopupMenuButton<String>(
      //           // color: Colors.transparent,
      //           elevation: 1.0,
      //           offset: Offset(0, 71),
      //           itemBuilder: (context) {
      //             return <PopupMenuEntry<String>>[
      //               PopupMenuItem<String>(
      //                 value: 'help',
      //                 child: FlatButton(
      //                     onPressed: null,
      //                     child: Column(
      //                       children: <Widget>[
      //                         Row(
      //                           children: <Widget>[
      //                             Expanded(
      //                               flex: 1,
      //                               child: Icon(MaterialIcons.help_outline),
      //                             ),
      //                             Expanded(
      //                               flex: 2,
      //                               child: Center(
      //                                 child: Text("帮助中心"),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     )),
      //               ),
      //               PopupMenuItem<String>(
      //                 value: 'help',
      //                 child: FlatButton(
      //                     onPressed: null,
      //                     child: Column(
      //                       children: <Widget>[
      //                         Row(
      //                           children: <Widget>[
      //                             Expanded(
      //                               flex: 1,
      //                               child: Icon(MaterialIcons.help_outline),
      //                             ),
      //                             Expanded(
      //                               flex: 2,
      //                               child: Center(
      //                                 child: Text("帮助中心"),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     )),
      //               ),
      //               PopupMenuItem<String>(
      //                 value: 'help',
      //                 child: FlatButton(
      //                     onPressed: () {
      //                       // Navigator.pushNamed(context, "help_route"),
      //                       Navigator.push(
      //                         context,
      //                         PageRouteBuilder(
      //                           transitionDuration:
      //                               Duration(milliseconds: 500), //动画时间为500毫秒
      //                           pageBuilder: (BuildContext context,
      //                               Animation animation,
      //                               Animation secondaryAnimation) {
      //                             return FadeTransition(
      //                               opacity: animation,
      //                               child: HelpRoute(),
      //                             );
      //                           },
      //                         ),
      //                       );
      //                     },
      //                     child: Column(
      //                       children: <Widget>[
      //                         Row(
      //                           children: <Widget>[
      //                             Expanded(
      //                               flex: 1,
      //                               child: Icon(MaterialIcons.help_outline),
      //                             ),
      //                             Expanded(
      //                               flex: 2,
      //                               child: Center(
      //                                 child: Text("帮助中心"),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     )),
      //               ),
      //             ];
      //           },
      //         )
      //       ],
      //       flexibleSpace: FlexibleSpaceBar(
      //         centerTitle: true,
      //         title: Text(
      //           "Just Do It",
      //           style: TextStyle(
      //             color: Color.fromARGB(255, 115, 166, 212),
      //             fontSize: 20.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         background: Container(
      //           color: Color.fromARGB(255, 105, 192, 255),
      //           child: Center(
      //             child: Text("test"),
      //           ),
      //         ),
      //       ),
      //     ),
      //     SliverFixedExtentList(
      //       itemExtent: 100.0,
      //       delegate: SliverChildListDelegate(
      //         [
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //           Icon(Icons.ac_unit),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      //BottomAppBar Style 1
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      //   foregroundColor: Colors.white,
      //   backgroundColor: Color.fromARGB(255, 255, 192, 105),
      //   elevation: 2.0,
      //   mini: false,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // bottomNavigationBar: BottomAppBar(
      //   color: Color.fromARGB(255, 244, 143, 177),
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 4,
      //   child: Container(
      //     height: 50.0,
      //     child: Row(
      //       children: <Widget>[
      //         Expanded(
      //           flex: 1,
      //           child: Container(
      //             child: Icon(
      //               Feather.home,
      //               size: 30,
      //               color: Color.fromARGB(255, 115, 166, 212),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           width: 20,
      //         ),
      //         Expanded(
      //           flex: 1,
      //           child: Container(
      //             child: Icon(
      //               Icons.lightbulb_outline,
      //               size: 31,
      //               color: Color.fromARGB(255, 115, 166, 212),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           width: 20,
      //         ),
      //         Expanded(
      //           flex: 1,
      //           child: Container(
      //             child: Icon(
      //               MaterialIcons.data_usage,
      //               size: 30,
      //               color: Color.fromARGB(255, 115, 166, 212),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           width: 20,
      //         ),
      //         Expanded(
      //           flex: 1,
      //           child: Container(),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      //Bottom AppBar Style 2
      body: TabBarView(
                controller: tabController,
                children: <Widget>[
                    Container(
                        color: colors[0],
                    ),
                    Container(
                        color: colors[1],
                    ),
                    Container(
                        color: colors[2],
                    )
                ],
            ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: colors[currentIndex],
        index: currentIndex,
        height: 50.0,
        animationDuration: Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.fiber_new, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            currentIndex = index;
          });
          tabController.animateTo(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
      ),
    );
  }
}
