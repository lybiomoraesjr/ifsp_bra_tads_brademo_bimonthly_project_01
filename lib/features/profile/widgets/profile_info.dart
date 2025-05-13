import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:flutter_application_1/theme/colors.dart';

class ProfileInfo extends StatelessWidget {
  final String name;
  final int age;
  final String location;

  const ProfileInfo({
    super.key,
    required this.name,
    required this.age,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Text(
          "$name, $age",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: CustomColors.header,
            fontSize: AppFontSizes.display,
          ),
        ),
        Text(
          location,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: CustomColors.header,
            fontSize: AppFontSizes.xl - 2, // 20-2=18
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
