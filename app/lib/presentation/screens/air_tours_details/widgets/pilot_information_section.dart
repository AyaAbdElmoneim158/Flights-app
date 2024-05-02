import 'package:app/presentation/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';

class PilotInformationSection extends StatelessWidget {
  const PilotInformationSection({
    super.key,
  });

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
                Row(children: [
                  Image.asset(AppImages.pilot),
                  horizontalSpace(AppSizes.spaceBtwItems),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oleg Samsonov',
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
                              '5',
                              style: AppStyles.font12Gray800Regular,
                            ),
                          ],
                        )
                      ]),
                ]),
                verticalSpace(AppSizes.spaceBtwItems),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(AppSizes.sm),
                      decoration: BoxDecoration(
                        color: AppColors.gray100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Airplane',
                              style: AppStyles.font13Primary600Regular
                                  .copyWith(color: AppColors.gray500),
                            ),
                            Text('Cessna 172',
                                style: AppStyles.font14Gray800Medium),
                          ]),
                    ),
                  ),
                  horizontalSpace(AppSizes.spaceBtwItems),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(AppSizes.sm),
                      decoration: BoxDecoration(
                        color: AppColors.gray100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hours flown',
                              style: AppStyles.font13Primary600Regular
                                  .copyWith(color: AppColors.gray500),
                            ),
                            Text('1 250 hours',
                                style: AppStyles.font14Gray800Medium),
                          ]),
                    ),
                  ),
                ]),
                verticalSpace(AppSizes.spaceBtwItems),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(AppSizes.sm),
                  decoration: BoxDecoration(
                    color: AppColors.gray100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'License',
                          style: AppStyles.font13Primary600Regular
                              .copyWith(color: AppColors.gray500),
                        ),
                        Text('Commercial Pilot\'s License - CPL',
                            style: AppStyles.font14Gray800Medium),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
