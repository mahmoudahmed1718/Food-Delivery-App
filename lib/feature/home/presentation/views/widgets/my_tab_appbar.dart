import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food/feature/home/data/food_model.dart';

class MyTabAppbar extends StatelessWidget {
  const MyTabAppbar({super.key, required this.tabController});
  final TabController tabController;

  List<Tab> _buildCatogeryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, tabs: _buildCatogeryTabs()),
    );
  }
}
