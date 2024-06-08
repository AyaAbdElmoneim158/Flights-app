import 'package:animate_do/animate_do.dart';
import 'package:app/presentation/screens/search_result/models/air_tour_model.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import 'air_tour_or_flight_card.dart';

class AirToursListView extends StatelessWidget {
  const AirToursListView({
    super.key,
    this.isFlightCard = false,
  });
  final bool isFlightCard;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) => index.isEven
          ? FadeInRightBig(
              duration: const Duration(milliseconds: 1000),
              child: AirTourOrFlightCard(
                airTour: AirTourModel.dummyAirTour[index],
                isFlightCard: isFlightCard,
              ),
            )
          : FadeInLeftBig(
              duration: const Duration(milliseconds: 1000),
              child: AirTourOrFlightCard(
                airTour: AirTourModel.dummyAirTour[index],
                isFlightCard: isFlightCard,
              ),
            ),
      separatorBuilder: (_, __) => Padding(
        padding: EdgeInsets.symmetric(vertical: AppSizes.md),
        child: const Divider(color: AppColors.lightGray),
      ),
      itemCount: AirTourModel.dummyAirTour.length,
    );
  }
}
