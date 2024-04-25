import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../core/utils/constants/sizes.dart';
import 'onboarding_model.dart';
import 'widgets/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnboardingPage(model: OnboardingModel.onboardings[0]),
      OnboardingPage(model: OnboardingModel.onboardings[1]),
      OnboardingPage(model: OnboardingModel.onboardings[2]),
    ];
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        positionSlideIcon: 0.2,
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          size: AppSizes.iconMd,
          color: Colors.white,
        ),
      ),
    );
  }
}
