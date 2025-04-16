import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData customTheme = ThemeData(
  primaryColor: CustomColors.primary,
  scaffoldBackgroundColor: CustomColors.bgColorScreen,
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.white,
    foregroundColor: CustomColors.black,
  ),
  textTheme: const TextTheme(bodyMedium: TextStyle(color: CustomColors.text)),
);
