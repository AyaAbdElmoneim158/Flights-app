import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../search_result/air_tour_model.dart';
import '../../search_result/widgets/air_tours_info.dart';

class DetailsImageCard extends StatelessWidget {
  const DetailsImageCard({
    super.key,
    required this.airTour,
  });
  final AirTourModel airTour;

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
            airTour.image,
            width: double.infinity,
            height: 250.h,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: AppSizes.lg,
            left: AppSizes.lg,
          ),
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
        Positioned(
          top: AppSizes.sm,
          left: AppSizes.sm,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
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
