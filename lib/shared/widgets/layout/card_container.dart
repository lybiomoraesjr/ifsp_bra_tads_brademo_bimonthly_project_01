import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/spacing.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final double elevation;

  const CardContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.only(
      top: AppSpacing.xxl + AppSpacing.sm,
      bottom: AppSpacing.lg,
    ),
    this.borderRadius = 5.0,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(padding: padding!, child: child),
    );
  }
}
