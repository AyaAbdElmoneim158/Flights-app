import 'package:app/presentation/screens/search_result/widgets/favorite_icon.dart';
import 'package:app/presentation/screens/search_result/widgets/row_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../search_result/models/air_tour_model.dart';

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
        Image.asset(
          airTour.image,
          width: double.infinity,
          height: 250.h,
          fit: BoxFit.cover,
        ),
        Padding(
            padding: EdgeInsets.only(
              bottom: AppSizes.lg,
              left: AppSizes.lg,
            ),
            child: RowInfo(airTour: airTour)),
        Positioned(
          top: AppSizes.sm,
          right: AppSizes.sm,
          child: const FavoriteIcon(),
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
