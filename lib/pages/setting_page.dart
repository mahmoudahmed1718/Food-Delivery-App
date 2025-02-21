import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.only(top: 10, left: 25, right: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context, listen: false)
                      .isDarkMode,
                  onChanged: (value) =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
