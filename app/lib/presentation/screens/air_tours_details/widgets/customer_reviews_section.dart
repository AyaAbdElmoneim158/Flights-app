import 'package:app/presentation/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/styles.dart';

class CustomerReviewsSection extends StatelessWidget {
  const CustomerReviewsSection({
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
          HeadingText(text: AppStrings.customerReviews),
          //ToDo: Complete Design
          Text(
            "Complete",
            style: AppStyles.font16BlueMedium.copyWith(
              color: AppColors.error500,
            ),
          ),
        ],
      ),
    );
  }
}
