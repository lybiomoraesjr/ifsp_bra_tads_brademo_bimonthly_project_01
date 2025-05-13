import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/spacing.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:flutter_application_1/theme/colors.dart';

class ProfileBio extends StatelessWidget {
  final String bio;

  const ProfileBio({super.key, required this.bio});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
      child: Text(
        bio,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: CustomColors.header,
          fontSize: AppFontSizes.xl - 3, // 20-3=17
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
