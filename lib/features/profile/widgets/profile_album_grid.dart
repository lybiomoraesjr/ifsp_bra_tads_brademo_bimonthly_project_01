import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile/widgets/album_image_tile.dart';
import 'package:flutter_application_1/constants/spacing.dart';

class ProfileAlbumGrid extends StatelessWidget {
  final List<String> albumImages;

  const ProfileAlbumGrid({super.key, required this.albumImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.md,
        ),
        crossAxisSpacing: AppSpacing.gridSpacing,
        mainAxisSpacing: AppSpacing.gridSpacing,
        crossAxisCount: 3,
        children:
            albumImages.map((path) => AlbumImageTile(imagePath: path)).toList(),
      ),
    );
  }
}
