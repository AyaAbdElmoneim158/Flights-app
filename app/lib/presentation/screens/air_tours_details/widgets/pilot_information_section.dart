import 'package:app/presentation/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import '../../search_result/models/air_tour_model.dart';
import 'airplane_container.dart';
import 'build_section_image_name_pilot.dart';
import 'hours_flown_container.dart';
import 'license_container.dart';

class PilotInformationSection extends StatelessWidget {
  const PilotInformationSection({
    Key? key,
    required this.airTour,
  }) : super(key: key);
  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      decoration: AppStyles.containerAllCircularDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingText(text: AppStrings.pilotInformation),
          Container(
            padding: EdgeInsets.all(AppSizes.md),
            decoration: BoxDecoration(
              color: AppColors.gray50,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              children: [
                buildSectionImageNamePilot(airTour),
                verticalSpace(AppSizes.spaceBtwItems),
                Row(children: [
                  Expanded(child: AirplaneContainer(airTour: airTour)),
                  horizontalSpace(AppSizes.spaceBtwItems),
                  Expanded(child: HoursFlownContainer(airTour: airTour)),
                ]),
                verticalSpace(AppSizes.spaceBtwItems),
                LicenseContainer(airTour: airTour),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*


*/