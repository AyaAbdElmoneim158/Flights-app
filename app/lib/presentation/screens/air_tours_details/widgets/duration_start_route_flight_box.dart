import 'package:app/presentation/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import 'durations_list_view.dart';
import 'start_flight_list_view.dart';

class DurationStartRouteFlight extends StatelessWidget {
  const DurationStartRouteFlight({
    super.key,
    required this.flightDuration,
    required this.flightStart,
  });
  final String flightDuration;
  final String flightStart;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      decoration: AppStyles.containerAllCircularDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingText(text: AppStrings.flightDuration),
          SizedBox(height: 35, child: DurationsListView(text: flightDuration)),
          verticalSpace(AppSizes.spaceBtwSections),
          HeadingText(text: AppStrings.startOfFlight),
          SizedBox(height: 35, child: StartFlightListView(text: flightStart)),
          verticalSpace(AppSizes.spaceBtwSections),
          // HeadingText(text: AppStrings.flightRoute),
          // //ToDo: Complete Design
          // Text(
          //   "Complete",
          //   style: AppStyles.font16BlueMedium.copyWith(
          //     color: AppColors.error500,
          //   ),
          // ),
        ],
      ),
    );
  }
}
