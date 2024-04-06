import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../search_result/widgets/air_tours_info.dart';

class DetailsImageCard extends StatelessWidget {
  const DetailsImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppSizes.lg),
            bottomRight: Radius.circular(AppSizes.lg),
          ),
          child: Image.asset(
            AppImages.airTour2,
            width: double.infinity,
            height: 250.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: AppSizes.lg,
            left: AppSizes.lg,
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
        Positioned(
          top: AppSizes.sm,
          left: AppSizes.sm,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.gray25,
            ),
          ),
        ),
      ],
    );
  }
}
