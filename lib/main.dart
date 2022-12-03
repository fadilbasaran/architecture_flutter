// ignore_for_file: sort_child_properties_last

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() => runApp(EasyLocalization(
    child: const MyApp(),
    
    // ignore: prefer_const_literals_to_create_immutables
    supportedLocales: [
      const Locale.fromSubtags(languageCode: 'zh'), // generic Chinese 'zh'
      const Locale.fromSubtags(
          languageCode: 'zh',
          scriptCode: 'Hans'), // generic simplified Chinese 'zh_Hans'
      const Locale.fromSubtags(
          languageCode: 'zh',
          scriptCode: 'Hant'), // generic traditional Chinese 'zh_Hant'
      const Locale.fromSubtags(
          languageCode: 'zh',
          scriptCode: 'Hans',
          countryCode: 'CN'), // 'zh_Hans_CN'
      const Locale.fromSubtags(
          languageCode: 'zh',
          scriptCode: 'Hant',
          countryCode: 'TW'), // 'zh_Hant_TW'
      const Locale.fromSubtags(
          languageCode: 'zh',
          scriptCode: 'Hant',
          countryCode: 'HK'), // 'zh_Hant_HK'
    ],
    path: ''));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
