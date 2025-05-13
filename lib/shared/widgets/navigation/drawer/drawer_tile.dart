import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:flutter_application_1/constants/spacing.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback? onTap;
  final bool isSelected;
  final Color iconColor;

  const DrawerTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isSelected = false,
    this.iconColor = CustomColors.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: isSelected ? CustomColors.primary : CustomColors.white,
          borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.sm)),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: AppFontSizes.lg,
              color: isSelected ? CustomColors.white : iconColor,
            ),
            const SizedBox(width: AppSpacing.sm),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                letterSpacing: .3,
                fontSize: AppFontSizes.md + 1,
                color: isSelected
                    ? CustomColors.white
                    : CustomColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
