import 'package:flutter/material.dart';

class LanguageManager {
  static LanguageManager? _instance;
  static LanguageManager? get instance {
    _instance ??= LanguageManager._init(); //eğer null ise bunu kullan
    return _instance;
  }

  LanguageManager._init();

  final enLocale = const Locale('en', 'US');
  List<Locale> get supportLocales => [enLocale];
}
