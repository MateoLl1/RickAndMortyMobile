

import 'package:flutter/material.dart';

const appColorsList = <Color>[
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.green,
];

class AppTheme {
  
  final bool isDarK;
  final int selectColor;

  AppTheme({required this.isDarK,required this.selectColor});


  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    colorSchemeSeed: appColorsList[selectColor],
    brightness: isDarK ? Brightness.dark : Brightness.light
  );

}