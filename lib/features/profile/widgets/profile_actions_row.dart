import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/constants/spacing.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';

class ProfileActionsRow extends StatelessWidget {
  const ProfileActionsRow({super.key});

  Widget _buildButton(BuildContext context, String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSpacing.xs + 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.sm,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: CustomColors.white,
          fontSize: AppFontSizes.sm + 2,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(context, "CONNECT", CustomColors.info),
        const SizedBox(width: AppSpacing.xl),
        _buildButton(context, "MESSAGE", CustomColors.defaultColor),
      ],
    );
  }
}
