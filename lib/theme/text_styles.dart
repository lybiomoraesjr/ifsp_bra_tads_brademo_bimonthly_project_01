import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class CustomTextStyles {
  static final TextStyle bodySmall = GoogleFonts.openSans(
    fontSize: AppFontSizes.sm,
    color: CustomColors.defaultColor,
  );

  static final TextStyle body = GoogleFonts.openSans(
    fontSize: AppFontSizes.lg,
    color: CustomColors.defaultColor,
  );

  static final TextStyle bodyLarge = GoogleFonts.openSans(
    fontSize: AppFontSizes.xl,
    color: CustomColors.defaultColor,
  );

  static final TextStyle titleSmall = GoogleFonts.openSans(
    fontSize: AppFontSizes.xl,
    fontWeight: FontWeight.w500,
    color: CustomColors.header,
  );

  static final TextStyle title = GoogleFonts.openSans(
    fontSize: AppFontSizes.xxl,
    fontWeight: FontWeight.bold,
    color: CustomColors.header,
  );

  static final TextStyle titleLarge = GoogleFonts.openSans(
    fontSize: AppFontSizes.display,
    fontWeight: FontWeight.bold,
    color: CustomColors.header,
  );

  static final TextStyle headlineSmall = GoogleFonts.openSans(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: CustomColors.defaultColor,
  );

  static final TextStyle headlineMedium = GoogleFonts.openSans(
    fontSize: AppFontSizes.xxl,
    fontWeight: FontWeight.w700,
    color: CustomColors.defaultColor,
  );

  static final TextStyle headlineLarge = GoogleFonts.openSans(
    fontSize: AppFontSizes.display,
    fontWeight: FontWeight.w800,
    color: CustomColors.defaultColor,
  );

  static final TextStyle labelSmall = GoogleFonts.openSans(
    fontSize: AppFontSizes.sm,
    color: CustomColors.label,
  );

  static final TextStyle label = GoogleFonts.openSans(
    fontSize: AppFontSizes.md,
    color: CustomColors.label,
  );

  static final TextStyle labelLarge = GoogleFonts.openSans(
    fontSize: AppFontSizes.lg,
    color: CustomColors.label,
  );

  static final TextStyle subtitleSmall = GoogleFonts.openSans(
    fontSize: AppFontSizes.md,
    fontStyle: FontStyle.italic,
    color: CustomColors.muted,
  );

  static final TextStyle subtitle = GoogleFonts.openSans(
    fontSize: AppFontSizes.lg,
    fontStyle: FontStyle.italic,
    color: CustomColors.muted,
  );

  static final TextStyle subtitleLarge = GoogleFonts.openSans(
    fontSize: AppFontSizes.xl,
    fontStyle: FontStyle.italic,
    color: CustomColors.muted,
  );
}
