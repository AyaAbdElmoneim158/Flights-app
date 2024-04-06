import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_constants.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import 'info_duration_or_start_flight_widget.dart';

class DurationsListView extends StatelessWidget {
  const DurationsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) => InfoDurationOrStartFlightWidget(
        duration: AppConstants.durations[index],
        realTime: index == 1 ? true : false,
      ),
      separatorBuilder: (_, __) => horizontalSpace(AppSizes.sm),
      itemCount: AppConstants.durations.length,
    );
  }
}
