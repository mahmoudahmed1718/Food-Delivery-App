import 'package:flutter/material.dart';

import 'package:food/core/widgets/my_sliver_appbar.dart';
import 'package:food/feature/home/presentation/views/widgets/my_current_location.dart';
import 'package:food/feature/home/presentation/views/widgets/my_description_box.dart';
import 'package:food/feature/home/presentation/views/widgets/my_tab_appbar.dart';
import 'package:food/widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppbar(
                    title: MyTabAppbar(tabController: _tabController),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        )
                        // My current Location
                        ,
                        MyCurrentLocation(),
                        //description box
                        MyDescriptionBox()
                      ],
                    ))
              ],
          body: TabBarView(controller: _tabController, children: [
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Text('hi mahmoud');
                }),
            Text('hid'),
            Text('hidd'),
          ])),
    );
  }
}
