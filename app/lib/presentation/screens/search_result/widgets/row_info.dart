import 'package:app/presentation/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../models/air_tour_model.dart';
import 'air_tours_info.dart';

class RowInfo extends StatelessWidget {
  const RowInfo({
    super.key,
    required this.airTour,
  });

  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildAirToursInfo("⭐ ${airTour.rate}"),
          buildAirToursInfo("Airfield: ${airTour.airField}"),
          buildAirToursInfo("Passengers: ${airTour.passengers}"),
        ],
      ),
    );
  }
}
