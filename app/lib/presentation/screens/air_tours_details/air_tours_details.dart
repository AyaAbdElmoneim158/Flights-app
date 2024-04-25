import 'package:flutter/material.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../search_result/air_tour_model.dart';
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
          ImageFlight(airTour: airTour),
          verticalSpace(AppSizes.spaceBtwItems),
          const TypeSection(),
          verticalSpace(AppSizes.spaceBtwItems),
          DurationStartRouteFlight(
            flightDuration: airTour.flightDuration,
            flightStart: airTour.flightStart,
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          const PilotInformationSection(),
          verticalSpace(AppSizes.spaceBtwItems),
          const CustomerReviewsSection(),
          verticalSpace(AppSizes.spaceBtwItems),
          const BookForBtn(),
          verticalSpace(AppSizes.spaceBtwSections),
        ]),
      ),
    );
  }
}
