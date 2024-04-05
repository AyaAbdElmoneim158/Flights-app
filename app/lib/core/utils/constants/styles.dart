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

  static TextStyle font20Gray800Bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: AppFontWeightHelper.bold,
    color: AppColors.gray800,
  );

  static TextStyle font10Gray25SemiBold = TextStyle(
    fontSize: 10.sp,
    fontWeight: AppFontWeightHelper.semiBold,
    color: AppColors.gray25,
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

  static Decoration? containerBottomCircularDecoration = const BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
  );

  static Decoration? containerTopCircularDecoration = const BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
  );

  static Decoration? textFieldShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: const Color(0xff101828).withOpacity(0.10),
        spreadRadius: -4,
        blurRadius: 16,
        offset: const Offset(0, 12),
      ),
      BoxShadow(
        color: const Color(0xff101828).withOpacity(0.05),
        spreadRadius: -2,
        blurRadius: 6,
        offset: const Offset(0, 4),
      ),
    ],
  );
}
