import 'package:flutter/material.dart';

class AppColors {
  static const purple = Color.fromRGBO(117, 98, 224, 1);
  static const darkGrey = Color(0XFF635C5C);
}

class TextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'mons',
    fontWeight: FontWeight.bold,
    color: AppColors.darkGrey,
    fontSize: 16
  );

  static TextStyle body = const TextStyle(
    fontFamily: 'mons',
    fontWeight: FontWeight.normal,
    color: AppColors.darkGrey,
    fontSize: 12
  );
}
