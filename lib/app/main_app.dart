import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route_names.dart';
import 'package:flutter_application_1/app/routes.dart';
import 'package:flutter_application_1/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: customTheme,
      initialRoute: RouteNames.welcome,
      onGenerateRoute: onGenerateRoute,
    );
  }
}