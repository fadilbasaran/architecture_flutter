import 'package:flutter/material.dart';
import 'package:fluttermvm_tamplate/core/base/state/base_state.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dynamicHeight(0.2),
      color: themeData.primaryColor,
      height: dynamicHeight(0.50),
      child: const Placeholder(),
    );
  }
}
