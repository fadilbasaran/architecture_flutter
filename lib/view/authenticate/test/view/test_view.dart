import 'package:flutter/material.dart';
import 'package:fluttermvm_tamplate/core/base/state/base_state.dart';
import 'package:fluttermvm_tamplate/core/base/view/base_widget.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: 'Nerde nerde nerdesin dost',
        onPageBuilder: (context, value) => const Text('data'));
  }
}
