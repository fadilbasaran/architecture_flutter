// ignore_for_file: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvm_tamplate/core/base/state/base_state.dart';
import 'package:fluttermvm_tamplate/core/base/view/base_widget.dart';
import 'package:fluttermvm_tamplate/core/init/lang/language_manager.dart';
import 'package:fluttermvm_tamplate/core/init/lang/locale_keys.g.dart';
import 'package:fluttermvm_tamplate/view/authenticate/test/viewModel/test_view_model.dart';

import '../../../../core/extension/string_extension.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  late TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewModel: TestViewModel(),
        onModelReady: (model) {
          viewModel = model;
        },
        onPageBuilder: (context, value) => const Text('data'));
  }

  Widget get scaffoldBody => Scaffold(
        appBar: AppBar(
          title: textWelcomeWidget(),
          actions: [iconButtonChangeTheme()],
        ),
        floatingActionButton: flutterActionButtomNumberIncrement(),
        body: textNumber,
      );

  Text textWelcomeWidget() => Text(LocaleKeys.welcome.locale);

  IconButton iconButtonChangeTheme() {
    return IconButton(
        onPressed: () {
          context.locale = LanguageManager.instance!.enLocale;
        },
        icon: const Icon(Icons.change_history));
  }

  FloatingActionButton flutterActionButtomNumberIncrement() =>
      FloatingActionButton(onPressed: () => viewModel.incrementNumber());

  Widget get textNumber {
    return Observer(
      builder: (context) => Text(viewModel.number.toString()),
    );
  }
}
