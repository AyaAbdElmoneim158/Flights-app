import 'package:flutter/material.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/styles.dart';

class InfoDurationOrStartFlightWidget extends StatelessWidget {
  const InfoDurationOrStartFlightWidget({
    super.key,
    required this.duration,
    this.realTime = false,
  });
  final String duration;
  final bool realTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: realTime ? AppColors.primary : AppColors.lightGray,
      ),
      padding: EdgeInsets.all(AppSizes.sm),
      child: Text(
        duration,
        style: realTime
            ? AppStyles.font15DarkGrayRegular.copyWith(color: AppColors.white)
            : AppStyles.font15DarkGrayRegular,
      ),
    );
  }
}
