import 'package:app/presentation/core/reusable_widgets/app_button.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/air_tour_model.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
    required this.airTour,
  });

  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Price per passenger",
          style: AppStyles.font12DarkGrayRegular,
        ),
        AppTextButton(
          buttonText: "${airTour.price} ₽",
          textStyle: AppStyles.font18WhiteMedium,
          onPressed: () {},
          borderRadius: 50.w,
          buttonHeight: 32.h,
        )
      ],
    );
  }
}
