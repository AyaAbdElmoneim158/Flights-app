import 'package:flutter/material.dart';
import '../../core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:get/get.dart';
import '../../core/reusable_widgets/app_button.dart';
import '../../core/reusable_widgets/app_text_field.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/styles.dart';
import '../home/widgets/extreme_airplane_flight_text.dart';

class CodeConfirmationScreen extends StatelessWidget {
  const CodeConfirmationScreen({super.key});

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
                  buildHeadingBlueBlackText("Enter the\n", "confirmation code"),
                  verticalSpace(AppSizes.spaceBtwItems),
                  //ToDo: Add package - - - - - - - - - - - - - - - - - -
                  AppTextFormField(
                    hintText: "confirmation code package",
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
                    Get.to(() => const CodeConfirmationScreen());
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
