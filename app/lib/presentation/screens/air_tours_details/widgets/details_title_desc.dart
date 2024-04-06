import 'package:flutter/material.dart';

import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';

class DetailsTitleDesc extends StatelessWidget {
  const DetailsTitleDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cessna 172 familiarization flight\nfrom Kronstadt",
            style: AppStyles.font17AccentSemiBold,
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          Text(
            "An exciting flight in a Cessna 172 sightseeing airplane over the neighborhood of the airfield. The flight includes performance of simple aerobatics figures and short-term weightlessness mode.",
            style: AppStyles.font14Gray600Regular,
          )
        ],
      ),
    );
  }
}
