import 'package:flutter/material.dart';
import 'package:fluttermvm_tamplate/core/constants/enums/app_theme_enum.dart';
import 'package:fluttermvm_tamplate/core/init/theme/app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance!.theme;
  ThemeData get currentTheme => _currentTheme;
  void changeValue(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {}
  }
}
