import 'package:flutter/material.dart';

import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import 'air_tour_card.dart';

class AirToursListView extends StatelessWidget {
  const AirToursListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, __) => const AirTourCard(),
      separatorBuilder: (_, __) => verticalSpace(AppSizes.spaceBtwItems),
      itemCount: 4,
    );
  }
}
