import 'package:flutter/material.dart';
import '../../extension/string_extension.dart';

class LocalText extends StatelessWidget {
  const LocalText({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    
    return Text(value.locale);//Added to text
  }
}
