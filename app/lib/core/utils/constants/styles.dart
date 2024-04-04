import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/font_weight_helper.dart';
import 'colors.dart';

abstract class AppStyles {
  static TextStyle font24WhiteSemiBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeightHelper.semiBold,
    color: AppColors.white,
  );
  static TextStyle font16WhiteRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeightHelper.regular,
    color: AppColors.white,
  );
  static TextStyle font16BlueMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeightHelper.medium,
    color: AppColors.primary,
  );

  static TextStyle font30BlueBold = TextStyle(
    fontSize: 30.sp,
    fontWeight: AppFontWeightHelper.bold,
    color: AppColors.primary,
  );

  static TextStyle font16Gray400Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeightHelper.regular,
    color: AppColors.gray400,
  );
  static TextStyle font16Gray800Medium = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeightHelper.medium,
    color: AppColors.gray800,
  );
  static TextStyle font24Gray800Medium = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeightHelper.medium,
    color: AppColors.gray800,
  );

  static Decoration? bottomNavigationDecoration = const BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: AppColors.bottomNavigationShadow,
        spreadRadius: 0,
        blurRadius: 20 / 3,
        offset: Offset(0, 3),
      ),
    ],
  );
}
