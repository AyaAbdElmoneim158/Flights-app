import 'package:app/presentation/core/reusable_widgets/app_text_field.dart';
import 'package:app/presentation/screens/home/widgets/extreme_airplane_flight_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/reusable_widgets/app_button.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../../core/utils/constants/styles.dart';
import 'first_and_last_name_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

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
                  buildHeadingBlueBlackText("Enter phone\n", "number"),
                  verticalSpace(AppSizes.spaceBtwItems),
                  //ToDo: Add package - - - - - - - - - - - - - - - - - -
                  AppTextFormField(
                    hintText: "City",
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
                    Get.to(() => const FirstAndLastNameScreen());
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
