class LanguageManager {
  static LanguageManager? _instance;
  static LanguageManager? get instance {
    _instance ??= LanguageManager();//eğer null ise bunu kullan
    return _instance;
  }
}
