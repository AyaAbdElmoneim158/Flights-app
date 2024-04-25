import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/utils/constants/styles.dart';
import 'extreme_airplane_flight_text.dart';
import 'home_form.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({
    super.key,
    required this.topPadding,
  });

  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      decoration: AppStyles.containerBottomCircularDecoration,
      child: Column(
        children: [
          verticalSpace(topPadding),
          ZoomIn(
              duration: const Duration(milliseconds: 500),
              child: buildHeadingBlueBlackText(
                AppStrings.extreme,
                AppStrings.airplaneFlight,
              )),
          verticalSpace(AppSizes.spaceBtwSections),
          const HomeForm()
        ],
      ),
    );
  }
}
