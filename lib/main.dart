import 'package:flutter/material.dart';
import 'package:food/auth/login_or_register.dart';
import 'package:food/core/themes/theme_provider.dart';
import 'package:food/feature/home/data/resturant_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => RestaurantModel()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1800,
        minWidth: 350,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(350, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1800, name: DESKTOP),
        ],
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const LoginOrRegister(),
    );
  }
}
