import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/pages/home_page.dart';
import 'package:flutter_application_1/features/profile/pages/profile_page.dart';
import 'package:flutter_application_1/features/article/pages/article_page.dart';
import 'package:flutter_application_1/features/sign_up/pages/sign_up_page.dart';
import 'package:flutter_application_1/features/welcome/pages/welcome_page.dart';
import 'package:flutter_application_1/shared/models/article_model.dart';
import 'route_names.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteNames.home:
      return MaterialPageRoute(builder: (_) => HomePage());

    case RouteNames.profile:
      return MaterialPageRoute(builder: (_) => ProfilePage());

    case RouteNames.articleDetails:
      final article = settings.arguments as Article;
      return MaterialPageRoute(builder: (_) => ArticlePage(article: article));

    case RouteNames.welcome:
      return MaterialPageRoute(builder: (_) => WelcomePage());

    case RouteNames.signUp:
      return MaterialPageRoute(builder: (_) => SignUpPage());

    default:
      return MaterialPageRoute(
        builder:
            (_) => Scaffold(body: Center(child: Text('Rota não encontrada'))),
      );
  }
}
