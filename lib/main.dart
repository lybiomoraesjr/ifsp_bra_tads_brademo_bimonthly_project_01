import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/Theme.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: CustomColors.primary,
        scaffoldBackgroundColor: CustomColors.bgColorScreen,
        appBarTheme: AppBarTheme(
          backgroundColor: CustomColors.white,
          foregroundColor: CustomColors.black,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: CustomColors.text),
        ),
      ),
      home: HomePage(),
    );
  }
}
