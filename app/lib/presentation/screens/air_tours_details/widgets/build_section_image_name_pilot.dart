import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import '../../search_result/models/air_tour_model.dart';

Row buildSectionImageNamePilot(AirTourModel airTour) {
  return Row(children: [
    Image.asset(airTour.pilot.image),
    horizontalSpace(AppSizes.spaceBtwItems),
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        airTour.pilot.name,
        style: AppStyles.font17Gray800Medium,
      ),
      Row(
        children: [
          for (var i = 0; i < 5; i++)
            const Icon(
              Icons.star_rate_rounded,
              color: AppColors.warning300,
              size: 12,
            ),
          horizontalSpace(AppSizes.spaceBtwItems / 3),
          Text(
            airTour.pilot.rate.toString(),
            style: AppStyles.font12Gray800Regular,
          ),
        ],
      )
    ]),
  ]);
}
