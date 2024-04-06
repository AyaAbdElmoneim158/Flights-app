import 'package:flutter/material.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/utils/constants/styles.dart';

Align buildExtremeAirplaneFlightText() {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        style: AppStyles.font30BlueBold.copyWith(height: 1.2),
        children: [
          TextSpan(
            text: AppStrings.extreme,
          ),
          TextSpan(
            text: AppStrings.airplaneFlight,
            style: const TextStyle(color: AppColors.accent),
          ),
        ],
      ),
    ),
  );
}
