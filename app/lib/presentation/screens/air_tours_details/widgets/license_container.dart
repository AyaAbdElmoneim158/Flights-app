import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/styles.dart';
import '../../search_result/models/air_tour_model.dart';

class LicenseContainer extends StatelessWidget {
  const LicenseContainer({
    super.key,
    required this.airTour,
  });

  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'License',
          style: AppStyles.font13Primary600Regular
              .copyWith(color: AppColors.gray500),
        ),
        Text(
          airTour.pilot.license,
          style: AppStyles.font14Gray800Medium,
        ),
      ]),
    );
  }
}
