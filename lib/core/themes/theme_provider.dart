import 'package:flutter/material.dart';
import 'package:food/core/themes/dark_mode.dart';
import 'package:food/core/themes/light_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _themeData;
  late bool _isDarkMode;

  ThemeProvider() {
    _themeData = lightMode; // تعيين قيمة افتراضية
    _isDarkMode = false;
  }

  ThemeData get themeData => _themeData;
  bool get isDarkMode => _isDarkMode;

  // 🔹 تحميل الثيم المحفوظ
  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool("isDarkMode") ?? false;
    _themeData = _isDarkMode ? darktMode : lightMode;
    notifyListeners();
  }

  // 🔹 تبديل الثيم
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _themeData = _isDarkMode ? darktMode : lightMode;
    notifyListeners();
    _saveTheme();
  }

  // 🔹 حفظ الثيم
  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isDarkMode", _isDarkMode);
  }
}
