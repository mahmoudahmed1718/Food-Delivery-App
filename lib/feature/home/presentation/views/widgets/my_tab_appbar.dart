import 'package:flutter/material.dart';

class MyTabAppbar extends StatelessWidget {
  const MyTabAppbar({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, tabs: [
//1st tab
        Tab(
          icon: Icon(Icons.home),
        ),
        //2st tab
        Tab(
          icon: Icon(Icons.settings),
        ),
        Tab(
          icon: Icon(Icons.person),
        ),
      ]),
    );
  }
}
