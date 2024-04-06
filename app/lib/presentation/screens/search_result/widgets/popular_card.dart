import 'package:flutter/material.dart';

import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.helperInfo,
            width: 118,
          ),
          verticalSpace(AppSizes.spaceBtwItems / 2),
          const Text("Extreme flight")
        ],
      ),
    );
  }
}
