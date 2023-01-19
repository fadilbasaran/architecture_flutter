// ignore_for_file: sort_child_properties_last

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvm_tamplate/core/constants/app/app_contstants.dart';
import 'package:fluttermvm_tamplate/core/init/lang/language_manager.dart';
import 'package:fluttermvm_tamplate/view/authenticate/test/view/test_view.dart';

void main() => runApp(EasyLocalization(
    child: const MyApp(),

    // ignore: prefer_const_literals_to_create_immutables
    supportedLocales: LanguageManager.instance!.supportLocales,
    path: ApplicationConstants.LANG_ASSET_PATH));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const TestView();
  }
}
