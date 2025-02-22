import 'package:flutter/material.dart';
import 'package:food/feature/home/presentation/views/widgets/my_drawer_tile.dart';

import 'package:food/feature/setting/presentation/view/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            text: 'H O M E',
            icon: Icons.home,
            ontab: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: 'S E T T I N G',
            icon: Icons.settings,
            ontab: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingPage();
              }));
            },
          ),
          Spacer(),
          MyDrawerTile(
            text: 'L O G  O U T',
            icon: Icons.logout,
            ontab: () {},
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
