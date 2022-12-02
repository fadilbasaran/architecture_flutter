import 'package:flutter/material.dart';
import 'package:fluttermvm_tamplate/core/base/state/base_state.dart';
import 'package:fluttermvm_tamplate/core/base/view/base_widget.dart';
import 'package:fluttermvm_tamplate/view/authenticate/test/viewModel/test_view_model.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewModel: TestViewModel(),
        onPageBuilder: (context, value) => const Text('data'));
  }
}
