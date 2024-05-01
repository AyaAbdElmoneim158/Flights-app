import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import '../profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: AppStyles.font16Gray800Medium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileGrayCard(
                text: "Application language",
                image: AppImages.globeHemisphereWest,
                rightWidget: Text(
                  "English",
                  style: AppStyles.font15DarkGrayRegular,
                ),
              ),
              verticalSpace(AppSizes.spaceBtwItems),
              ProfileGrayCard(
                text: "Push notifications",
                image: AppImages.notification,
                rightWidget: Switch(
                  value: true,
                  onChanged: (val) {},
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.primary,
                  inactiveThumbColor: AppColors.white,
                  inactiveTrackColor: AppColors.gray100,
                ),
              ),
              verticalSpace(AppSizes.spaceBtwItems),
              ProfileGrayCard(
                text: "About us",
                image: AppImages.airplaneFill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
