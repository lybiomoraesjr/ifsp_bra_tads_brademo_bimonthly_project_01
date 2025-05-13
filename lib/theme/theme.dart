import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/color_scheme.dart';
import 'package:flutter_application_1/theme/components/app_bar_theme.dart';
import 'package:flutter_application_1/theme/text_theme.dart';
import 'colors.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: CustomColors.white,
  appBarTheme: appBarTheme,
  textTheme: textTheme,

  colorScheme: customColorScheme,

  dividerColor: CustomColors.border,
  hintColor: CustomColors.placeholder,
  disabledColor: CustomColors.muted,
);
