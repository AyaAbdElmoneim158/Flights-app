import 'package:app/presentation/core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../air_tours_details/air_tours_details.dart';
import '../models/air_tour_model.dart';
import 'favorite_icon.dart';
import 'price_row.dart';
import 'row_info.dart';

class AirTourOrFlightCard extends StatelessWidget {
  const AirTourOrFlightCard({
    super.key,
    this.isFlightCard = false,
    required this.airTour,
  });
  final bool isFlightCard;
  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
        () => AirTourDetails(
          airTour: airTour,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                child: Image.asset(
                  airTour.image,
                  width: double.infinity,
                  height: 160.h,
                  fit: BoxFit.cover,
                ),
              ),
              RowInfo(airTour: airTour),
              Positioned(
                top: AppSizes.sm,
                right: AppSizes.sm,
                child: const FavoriteIcon(),
              ),
            ],
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          Text(
            airTour.name,
            style: AppStyles.font17AccentSemiBold,
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          if (isFlightCard) PriceRow(airTour: airTour)
        ],
      ),
    );
  }
}
