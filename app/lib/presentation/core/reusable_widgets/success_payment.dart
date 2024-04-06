import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/images.dart';
import '../utils/constants/sizes.dart';
import '../utils/constants/spacing.dart';
import '../utils/constants/styles.dart';
import 'app_button.dart';

class SuccessPaymentScreen extends StatelessWidget {
  const SuccessPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.defaultPadding,
              ),
              child: Column(children: [
                Image.asset(
                  AppImages.cardTick,
                  width: AppSizes.imageOnboardingSize,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paid',
                      style: AppStyles.font24WhiteSemiBold,
                    ),
                    verticalSpace(AppSizes.defaultSpace / 2),
                    Text(
                      'In case of flight cancellation the money will be refunded',
                      style: AppStyles.font16WhiteRegular,
                    ),
                    verticalSpace(AppSizes.defaultSpace * 2),
                  ],
                ),
              ]),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: AppTextButton(
                buttonText: 'Perfect',
                textStyle: AppStyles.font16BlueMedium,
                onPressed: () {},
                buttonWidth: double.infinity,
                backgroundColor: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
