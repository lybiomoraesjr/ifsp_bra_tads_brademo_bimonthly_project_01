import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/constants/spacing.dart';
import 'package:flutter_application_1/features/profile/widgets/profile_actions_row.dart';
import 'package:flutter_application_1/features/profile/widgets/profile_album_grid.dart';
import 'package:flutter_application_1/features/profile/widgets/profile_album_header.dart';
import 'package:flutter_application_1/features/profile/widgets/profile_avatar.dart';
import 'package:flutter_application_1/features/profile/widgets/profile_bio.dart';
import 'package:flutter_application_1/features/profile/widgets/profile_info.dart';
import 'package:flutter_application_1/features/profile/widgets/profile_stats_row.dart';
import 'package:flutter_application_1/mock/profiles_mock.dart';
import 'package:flutter_application_1/shared/widgets/layout/card_container.dart';
import 'package:flutter_application_1/shared/widgets/navigation/bottombar/AppBottomNavigationBar.dart';
import 'package:flutter_application_1/shared/widgets/navigation/drawer/app_drawer.dart';
import 'package:flutter_application_1/shared/widgets/navigation/appbar/navbar.dart';
import 'package:flutter_application_1/theme/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = mockProfiles[0];

    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: const AppBottomNavigationBar(currentIndex: 1),
      appBar: Navbar(
        title: "Profile",
        isTransparentBackground: true,
      ),
      backgroundColor: CustomColors.block,
      drawer: AppDrawer(currentPage: "Profile"),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(AppAssets.backgroundProfile),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.only(
                top: 74.0,
                left: AppSpacing.horizontal,
                right: AppSpacing.horizontal,
              ),
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: AppSpacing.lg),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.muted,
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: CardContainer(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0),
                          child: Column(
                            children: [
                              const ProfileActionsRow(),
                              const SizedBox(height: AppSpacing.xl),
                              ProfileStatsRow(
                                friends: profile.friends,
                                photos: profile.albumImages.length,
                                comments: profile.comments,
                              ),
                              const SizedBox(height: AppSpacing.xl),
                              ProfileInfo(
                                name: profile.fullName,
                                age: profile.age,
                                location: profile.location,
                              ),
                              const Divider(
                                height: AppSpacing.xxl,
                                thickness: 1.5,
                                indent: AppSpacing.xl,
                                endIndent: AppSpacing.xl,
                              ),
                              ProfileBio(bio: profile.bio),
                              const SizedBox(height: AppSpacing.md),
                              Text(
                                "Show more",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: AppSpacing.lg),
                              const ProfileAlbumHeader(),
                              ProfileAlbumGrid(
                                albumImages: profile.albumImages,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const ProfileAvatar(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
