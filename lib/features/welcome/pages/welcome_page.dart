import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route_names.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:flutter_application_1/constants/spacing.dart';
import 'package:flutter_application_1/theme/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _BackgroundImage(),
          Padding(
            padding: const EdgeInsets.only(
              top: AppSpacing.xl + AppSpacing.lg,
              left: AppSpacing.xl,
              right: AppSpacing.xl,
              bottom: AppSpacing.lg,
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  _Logo(),
                  _Texts(),
                  _GetStartedButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.backgroundWelcome),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.logoWhite, scale: 1);
  }
}

class _Texts extends StatelessWidget {
  const _Texts();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: AppSpacing.xl + AppSpacing.lg),
          child: Text(
            "Design System",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: CustomColors.white,
              fontSize: AppFontSizes.display + 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppSpacing.lg),
          child: Text(
            "Fully coded Flutter widgets and screens.",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: CustomColors.white,
              fontSize: AppFontSizes.xl - 2,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ],
    );
  }
}

class _GetStartedButton extends StatelessWidget {
  const _GetStartedButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.md),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.secondary,
            foregroundColor: CustomColors.defaultColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSpacing.sm),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.signUp);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm + AppSpacing.xs,
            ),
            child: Text(
              "GET STARTED",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: AppFontSizes.lg,
                color: CustomColors.defaultColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
