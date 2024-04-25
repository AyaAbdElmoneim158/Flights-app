import 'package:app/presentation/core/reusable_widgets/app_button.dart';
import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:app/presentation/core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../air_tours_details/air_tours_details.dart';
import '../air_tour_model.dart';
import 'air_tours_info.dart';

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
      onTap: () => Get.to(() => AirTourDetails(
            airTour: airTour,
          )),
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
              Padding(
                padding: EdgeInsets.all(AppSizes.sm),
                child: Row(
                  children: [
                    buildAirToursInfo("⭐ ${airTour.rate}"),
                    buildAirToursInfo("Airfield: ${airTour.airField}"),
                    buildAirToursInfo("Passengers: ${airTour.passengers}"),
                  ],
                ),
              ),
              Positioned(
                top: AppSizes.sm,
                right: AppSizes.sm,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.gray25.withOpacity(0.5),
                      radius: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: AppColors.gray25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          Text(
            airTour.name,
            style: AppStyles.font17AccentSemiBold,
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          if (isFlightCard)
            Row(
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
            )
        ],
      ),
    );
  }
}
