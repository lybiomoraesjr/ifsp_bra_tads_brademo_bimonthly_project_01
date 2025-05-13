import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';

class ProfileStatsRow extends StatelessWidget {
  final int friends;
  final int photos;
  final int comments;

  const ProfileStatsRow({
    super.key,
    required this.friends,
    required this.photos,
    required this.comments,
  });

  Widget _buildStat(BuildContext context, String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: CustomColors.header,
            fontSize: AppFontSizes.xl,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: CustomColors.defaultColor,
            fontSize: AppFontSizes.sm,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildStat(context, '$friends', 'Friends'),
        _buildStat(context, '$photos', 'Photos'),
        _buildStat(context, '$comments', 'Comments'),
      ],
    );
  }
}
