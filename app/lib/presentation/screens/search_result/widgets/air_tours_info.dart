import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:app/presentation/core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

Container buildAirToursInfo(String text) {
  return Container(
    margin: EdgeInsets.only(right: AppSizes.sm),
    padding: EdgeInsets.symmetric(
      horizontal: AppSizes.sm,
      vertical: AppSizes.xs,
    ),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(50),
    ),
    child: Text(
      text,
      style: AppStyles.font10Gray800Regular,
    ),
  );
}
