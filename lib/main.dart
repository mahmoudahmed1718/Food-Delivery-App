import 'package:flutter/material.dart';
import 'package:food/auth/login_or_register.dart';
import 'package:food/core/themes/theme_provider.dart';
import 'package:food/feature/home/data/resturant_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
// theme Provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => RestaurantModel()),

//resturant Provider
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: LoginOrRegister(),
    );
  }
}
