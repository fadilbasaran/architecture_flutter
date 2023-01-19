
import 'package:provider/single_child_widget.dart';

class ApplicationPorvider {
  static ApplicationPorvider? _instance;
  static ApplicationPorvider? get instance {
    _instance ??= ApplicationPorvider._init(); //eğer null ise bunu kullan
    return _instance;
  }

  ApplicationPorvider._init();

  List<SingleChildWidget> dependItems = [

  ];
  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> uIChangeItems = [];
}
