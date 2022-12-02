// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  @observable
  int number = 0;

  @action
  void incremntNumber() {
    number++;
  }
}
