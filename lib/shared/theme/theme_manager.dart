import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/theme/themes.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  Color svgColor(ThemeManager themeManager, int page, int currentPage) {
    if (themeManager.themeMode == ThemeMode.light) {
      if (currentPage == page) {
        return SVGThemeData.lightIsSelected.color;
      }
      return SVGThemeData.lightIsUnselected.color;
    }
    if (currentPage == page) {
      return SVGThemeData.darkIsSelected.color;
    }
    return SVGThemeData.darkIsUnselected.color;
  }
}
