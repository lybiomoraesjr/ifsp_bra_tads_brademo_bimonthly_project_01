import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:flutter_application_1/constants/spacing.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String leftCategoryLabel;
  final String rightCategoryLabel;
  final bool isTransparentBackground;
  final bool showActionIcons;
  final bool disableShadow;
  final Color bgColor;

  const Navbar({
    super.key,
    this.title = "Home",
    this.leftCategoryLabel = "",
    this.rightCategoryLabel = "",
    this.isTransparentBackground = false,
    this.showActionIcons = true,
    this.disableShadow = false,
    this.bgColor = CustomColors.white,
  });

  final double _preferredHeight = 180.0;

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);

  @override
  Widget build(BuildContext context) {
    final bool hasCategories =
        leftCategoryLabel.isNotEmpty && rightCategoryLabel.isNotEmpty;

    return Container(
      height: hasCategories ? 150.0 : 102.0,
      decoration: BoxDecoration(
        color: !isTransparentBackground ? bgColor : Colors.transparent,
        boxShadow: [
          BoxShadow(
            color:
                !isTransparentBackground && !disableShadow
                    ? CustomColors.icon
                    : Colors.transparent,
            spreadRadius: -10,
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
          child: Column(
            children: [
              _NavbarHeader(widget: this),
              const SizedBox(height: 10),
              if (hasCategories) _NavbarCategories(widget: this),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavbarHeader extends StatelessWidget {
  final Navbar widget;
  const _NavbarHeader({required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color:
                    !widget.isTransparentBackground
                        ? (widget.bgColor == CustomColors.white
                            ? CustomColors.icon
                            : CustomColors.white)
                        : CustomColors.white,
                size: AppFontSizes.xl + 4,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color:
                    !widget.isTransparentBackground
                        ? (widget.bgColor == CustomColors.white
                            ? CustomColors.icon
                            : CustomColors.white)
                        : CustomColors.white,
                fontWeight: FontWeight.w600,
                fontSize: AppFontSizes.xl - 2,
              ),
            ),
          ],
        ),
        if (widget.showActionIcons)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color:
                      !widget.isTransparentBackground
                          ? (widget.bgColor == CustomColors.white
                              ? CustomColors.icon
                              : CustomColors.white)
                          : CustomColors.white,
                  size: AppFontSizes.xl + 2,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color:
                      !widget.isTransparentBackground
                          ? (widget.bgColor == CustomColors.white
                              ? CustomColors.icon
                              : CustomColors.white)
                          : CustomColors.white,
                  size: AppFontSizes.xl + 2,
                ),
                onPressed: null,
              ),
            ],
          ),
      ],
    );
  }
}

class _NavbarCategories extends StatelessWidget {
  final Navbar widget;
  const _NavbarCategories({required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Icon(
                Icons.spa,
                color: CustomColors.icon,
                size: AppFontSizes.xl + 2,
              ),
              const SizedBox(width: 10),
              Text(
                widget.leftCategoryLabel,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: CustomColors.icon,
                  fontSize: AppFontSizes.lg,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 30),
        Container(color: CustomColors.icon, height: 25, width: 1),
        const SizedBox(width: 30),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Icon(
                Icons.shopping_bag,
                color: CustomColors.icon,
                size: AppFontSizes.xl + 2,
              ),
              const SizedBox(width: 10),
              Text(
                widget.rightCategoryLabel,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: CustomColors.icon,
                  fontSize: AppFontSizes.lg,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
