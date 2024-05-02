import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/reusable_widgets/app_button.dart';
import '../../core/reusable_widgets/app_text_field.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/styles.dart';
import '../home/widgets/extreme_airplane_flight_text.dart';
import 'birth_date_screen.dart';

class FirstAndLastNameScreen extends StatelessWidget {
  const FirstAndLastNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpace(AppSizes.spaceBtwSections * 2),
                  buildHeadingBlueBlackText("Enter first &\n", "last name"),
                  verticalSpace(AppSizes.spaceBtwItems),
                  AppTextFormField(
                    hintText: "first name",
                    validator: (val) {},
                  ),
                  verticalSpace(AppSizes.spaceBtwInputFields),
                  AppTextFormField(
                    hintText: "last name",
                    validator: (val) {},
                  ),
                ],
              ),
            ),
            Column(
              children: [
                AppTextButton(
                  buttonText: "Next",
                  textStyle: AppStyles.font16BlueMedium.copyWith(
                    color: AppColors.white,
                  ),
                  onPressed: () {
                    Get.to(() => const BirthDateScreen());
                  },
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.primary,
                ),
                verticalSpace(AppSizes.spaceBtwSections * 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
