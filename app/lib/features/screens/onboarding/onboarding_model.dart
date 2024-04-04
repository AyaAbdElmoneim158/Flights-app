import 'package:flutter/material.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/strings.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String desc;
  final Color backgroundColor;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.desc,
    required this.backgroundColor,
  });

  static List<OnboardingModel> onboardings = [
    OnboardingModel(
      image: AppImages.onboardingImage1,
      title: AppStrings.onboardingTitle1,
      desc: AppStrings.onboardingDesc1,
      backgroundColor: AppColors.primary,
    ),
    OnboardingModel(
      image: AppImages.onboardingImage2,
      title: AppStrings.onboardingTitle2,
      desc: AppStrings.onboardingDesc2,
      backgroundColor: AppColors.primary,
    ),
    OnboardingModel(
      image: AppImages.onboardingImage3,
      title: AppStrings.onboardingTitle3,
      desc: AppStrings.onboardingDesc3,
      backgroundColor: AppColors.primary,
    ),
  ];
}
