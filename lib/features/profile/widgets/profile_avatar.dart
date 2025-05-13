import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/constants/spacing.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation: const Offset(0.0, -0.5),
      child: Align(
        alignment: const FractionalOffset(0.5, 0.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(AppAssets.mockProfilePicture),
          radius: AppSpacing.profileAvatarRadius,
        ),
      ),
    );
  }
}