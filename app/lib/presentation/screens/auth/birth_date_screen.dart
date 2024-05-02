import 'package:flutter/material.dart';
import '../../core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:get/get.dart';
import '../../core/reusable_widgets/app_button.dart';
import '../../core/reusable_widgets/app_text_field.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/styles.dart';
import '../home/widgets/extreme_airplane_flight_text.dart';
import 'code_confirmation_screen.dart';

class BirthDateScreen extends StatelessWidget {
  const BirthDateScreen({super.key});

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
                  buildHeadingBlueBlackText("Select your\n", "date of birth"),
                  verticalSpace(AppSizes.spaceBtwItems),
                ],
              ),
            ),
            //ToDo: Add package - - - - - - - - - - - - - - - - - -
            AppTextFormField(
              hintText: "date of birth package",
              validator: (val) {},
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
