import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:app/presentation/core/utils/constants/images.dart';
import 'package:app/presentation/core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'air_tours_info.dart';

class AirTourCard extends StatelessWidget {
  const AirTourCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                AppImages.airTour,
                width: double.infinity,
                height: 160.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: AppSizes.sm,
                  left: AppSizes.sm,
                ),
                child: Row(
                  children: [
                    buildAirToursInfo("⭐ 4.7"),
                    buildAirToursInfo("Airfield: Selzo"),
                    buildAirToursInfo("Passengers:4"),
                  ],
                ),
              ),
              Positioned(
                top: AppSizes.sm,
                right: AppSizes.sm,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.gray25.withOpacity(0.5),
                      radius: 16,
                    ),
                    IconButton(
                      // padding: EdgeInsets.zero,
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
            "Cessna 172 familiarization flight\nfrom Kronstadt",
            style: AppStyles.font17AccentSemiBold,
          )
        ],
      ),
    );
  }
}
