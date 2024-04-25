import 'package:flutter/material.dart';

import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import '../../search_result/air_tour_model.dart';

class DetailsTitleDesc extends StatelessWidget {
  const DetailsTitleDesc({
    super.key,
    required this.airTour,
  });
  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(airTour.name, style: AppStyles.font17AccentSemiBold),
          verticalSpace(AppSizes.spaceBtwItems),
          Text(airTour.dec, style: AppStyles.font14Gray600Regular)
        ],
      ),
    );
  }
}
