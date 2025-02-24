import 'package:flutter/material.dart';

import 'package:food/core/widgets/my_sliver_appbar.dart';
import 'package:food/feature/home/data/food_model.dart';
import 'package:food/feature/home/data/resturant_model.dart';
import 'package:food/feature/home/presentation/views/widgets/my_current_location.dart';
import 'package:food/feature/home/presentation/views/widgets/my_description_box.dart';
import 'package:food/feature/home/presentation/views/widgets/my_food_tile.dart';
import 'package:food/feature/home/presentation/views/widgets/my_tab_appbar.dart';
import 'package:food/widgets/my_drawer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
// sort out and return list of food item
  List<FoodModel> _fillterdMenuByCategory(
      FoodCategory category, List<FoodModel> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of food in given catogrey
  List<Widget> getFoodinthiscatogrey(List<FoodModel> fullMenu) {
    return FoodCategory.values.map((categery) {
      List<FoodModel> catogoryMenu =
          _fillterdMenuByCategory(categery, fullMenu);

      return ListView.builder(
          itemCount: catogoryMenu.length,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final food = catogoryMenu[index];
            return MyFoodTile(food: food, ontab: () {});
          });
    }).toList();
  }

  @override
  void initState() {
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
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
          body: Consumer<RestaurantModel>(
              builder: (context, resturant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodinthiscatogrey(resturant.menu))),
        ));
  }
}
