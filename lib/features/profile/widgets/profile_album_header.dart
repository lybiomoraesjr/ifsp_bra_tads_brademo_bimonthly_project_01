import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/constants/spacing.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';

class ProfileAlbumHeader extends StatelessWidget {
  const ProfileAlbumHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Album",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.lg,
              color: CustomColors.defaultColor,
            ),
          ),
          Text(
            "View All",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: CustomColors.primary,
              fontSize: AppFontSizes.sm + 1, // 12+1=13
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
