import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route_names.dart';
import 'package:flutter_application_1/mock/articles_mock.dart';
import 'package:flutter_application_1/features/home/widgets/article_card.dart';
import 'package:flutter_application_1/shared/widgets/navigation/bottombar/AppBottomNavigationBar.dart';
import 'package:flutter_application_1/shared/widgets/navigation/drawer/app_drawer.dart';
import 'package:flutter_application_1/constants/spacing.dart';
import 'package:flutter_application_1/shared/widgets/navigation/appbar/navbar.dart';
import 'package:flutter_application_1/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(currentIndex: 0),
      backgroundColor: CustomColors.white,
      drawer: AppDrawer(currentPage: "Home"),
      appBar: Navbar(
        title: "Home",
        leftCategoryLabel: "Beauty",
        rightCategoryLabel: "Fashion",
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: CustomColors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.md,
              ),
              child: ListView(
                children:
                    mockArticles
                        .map(
                          (article) => ArticleCard(
                            article,
                            onTap:
                                () => Navigator.pushNamed(
                                  context,
                                  RouteNames.articleDetails,
                                  arguments: article,
                                ),
                          ),
                        )
                        .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
