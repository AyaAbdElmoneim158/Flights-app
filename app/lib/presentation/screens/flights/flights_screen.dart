import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../../core/utils/constants/styles.dart';
import '../home/widgets/extreme_airplane_flight_text.dart';
import 'widgets/flights_form.dart';

class FlightsScreen extends StatelessWidget {
  const FlightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppSizes.defaultPadding),
            decoration: AppStyles.containerBottomCircularDecoration,
            child: Column(
              children: [
                verticalSpace(AppSizes.appBarHeight),
                ZoomIn(
                  duration: const Duration(milliseconds: 500),
                  child: ZoomIn(
                    duration: const Duration(milliseconds: 500),
                    child: buildHeadingBlueBlackText(
                      "Split the payment\n",
                      "with other passengers",
                    ),
                  ),
                ),
                verticalSpace(AppSizes.spaceBtwSections),
                const FlightsForm()
              ],
            ),
          )
        ],
      ),
    );
  }
}
