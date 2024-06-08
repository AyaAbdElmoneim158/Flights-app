import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

Container buildMinusAndPlusGrayContainer(String asset) {
  return Container(
    width: 28,
    height: 28,
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Image.asset(
      asset,
      height: AppSizes.iconXs,
    ),
  );
}
