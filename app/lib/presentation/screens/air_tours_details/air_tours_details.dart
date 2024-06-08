import 'package:animate_do/animate_do.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../search_result/models/air_tour_model.dart';
import 'widgets/book_for_btn.dart';
import 'widgets/customer_reviews_section.dart';
import 'widgets/duration_start_route_flight_box.dart';
import 'widgets/image_flight.dart';
import 'widgets/pilot_information_section.dart';
import 'widgets/type_section.dart';

class AirTourDetails extends StatelessWidget {
  const AirTourDetails({super.key, required this.airTour});
  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          ZoomIn(
            duration: const Duration(milliseconds: 500),
            child: ImageFlight(airTour: airTour),
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          ZoomIn(
            duration: const Duration(milliseconds: 750),
            child: const TypeSection(),
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          ZoomIn(
            duration: const Duration(milliseconds: 1000),
            child: DurationStartRouteFlight(
              flightDuration: airTour.flightDuration,
              flightStart: airTour.flightStart,
            ),
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          ZoomIn(
            duration: const Duration(milliseconds: 1250),
            child: PilotInformationSection(airTour: airTour),
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          ZoomIn(
            duration: const Duration(milliseconds: 1500),
            child: const CustomerReviewsSection(),
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          Text(
            "By continuing, you agree to the terms of use and\nprivacy policy",
            style: AppStyles.font13Primary600Regular,
            textAlign: TextAlign.center,
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          ZoomIn(
              duration: const Duration(milliseconds: 1750),
              child: const BookForBtn()),
          verticalSpace(AppSizes.spaceBtwSections),
        ]),
      ),
    );
  }
}
