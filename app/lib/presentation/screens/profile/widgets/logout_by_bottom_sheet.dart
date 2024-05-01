import 'package:app/presentation/core/reusable_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';

Future<dynamic> logoutByBottomSheet(BuildContext context) {
  return Get.bottomSheet(
    Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Do you want to log out of the app?",
                  style: AppStyles.font17AccentSemiBold,
                ),
                verticalSpace(AppSizes.spaceBtwSections),
                AppTextButton(
                  buttonText: "Cancel",
                  textStyle: AppStyles.font18WhiteMedium,
                  onPressed: () => Navigator.pop(context),
                  buttonWidth: double.infinity,
                ),
                verticalSpace(AppSizes.spaceBtwItems),
                AppTextButton(
                  buttonText: "Logout",
                  textStyle: AppStyles.font18WhiteMedium.copyWith(
                    color: AppColors.primary,
                  ),
                  onPressed: () {},
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.white,
                ),
              ]),
        ),
      ),
    ),
  );
}
