import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route_names.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:flutter_application_1/constants/spacing.dart';

import 'drawer_tile.dart';

class AppDrawer extends StatelessWidget {
  final String currentPage;

  const AppDrawer({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: CustomColors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.85,
              child: SafeArea(
                bottom: false,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: AppSpacing.xl),
                    child: Image.asset(AppAssets.logoPurple),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(
                padding: const EdgeInsets.only(
                  top: AppSpacing.lg,
                  left: AppSpacing.md,
                  right: AppSpacing.md,
                ),
                children: [
                  DrawerTile(
                    icon: Icons.home,
                    onTap: () {
                      if (currentPage != "Home") {
                        Navigator.pushNamed(context, RouteNames.home);
                      }
                    },
                    iconColor: CustomColors.primary,
                    title: "Home",
                    isSelected: currentPage == "Home" ? true : false,
                  ),
                  DrawerTile(
                    icon: Icons.pie_chart,
                    onTap: () {
                      if (currentPage != "Profile") {
                        Navigator.pushNamed(context, RouteNames.profile);
                      }
                    },
                    iconColor: CustomColors.warning,
                    title: "Profile",
                    isSelected: currentPage == "Profile" ? true : false,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(
                  left: AppSpacing.sm,
                  right: AppSpacing.md,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(height: 4, thickness: 0, color: CustomColors.muted),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: AppSpacing.md,
                        left: AppSpacing.md,
                        bottom: AppSpacing.sm,
                      ),
                      child: Text(
                        "DOCUMENTATION",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: CustomColors.black,
                          fontSize: AppFontSizes.md + 1,
                        ),
                      ),
                    ),
                    DrawerTile(
                      icon: Icons.logout,
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.welcome);
                      },
                      iconColor: CustomColors.muted,
                      title: "Logout",
                      isSelected:
                          currentPage == "Getting started" ? true : false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
