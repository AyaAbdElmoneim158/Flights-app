import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/styles.dart';

Align buildHeadingBlueBlackText(String blueText, String blackText ) {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        style: AppStyles.font30BlueBold.copyWith(height: 1.2),
        children: [
          TextSpan(
            text: blueText,
          ),
          TextSpan(
            text: blackText,
            style: const TextStyle(color: AppColors.accent),
          ),
        ],
      ),
    ),
  );
}
