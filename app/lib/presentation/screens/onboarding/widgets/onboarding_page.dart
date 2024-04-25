import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/reusable_widgets/app_button.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/utils/constants/styles.dart';
import '../../../../navigation_menu.dart';
import '../onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.model});
  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(),
          Column(children: [
            ZoomIn(
              duration: const Duration(milliseconds: 500),
              child: Image.asset(
                model.image,
                width: AppSizes.imageOnboardingSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.defaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInLeftBig(
                    duration: const Duration(milliseconds: 700),
                    child: Text(
                      model.title,
                      style: AppStyles.font24WhiteSemiBold,
                    ),
                  ),
                  verticalSpace(AppSizes.defaultSpace / 2),
                  FadeInLeftBig(
                    duration: const Duration(milliseconds: 900),
                    child: Text(
                      model.desc,
                      style: AppStyles.font16WhiteRegular,
                    ),
                  ),
                  verticalSpace(AppSizes.defaultSpace * 2),
                ],
              ),
            ),
          ]),
          ZoomIn(
            duration: const Duration(milliseconds: 1100),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.defaultPadding,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: AppTextButton(
                  buttonText: AppStrings.getStarted,
                  textStyle: AppStyles.font16BlueMedium,
                  onPressed: () => Get.off(() => const NavigationMenu()),
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle buildTextStyleOfOnboardingDesc() =>
      const TextStyle(color: Colors.white);

  TextStyle buildTextStyleOfOnboardingTitle() {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      fontSize: 24,
    );
  }
}
