import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../core/reusable_widgets/heading_text.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../search_result/widgets/air_tours_list_view.dart';
import '../search_result/widgets/filtration_text_field.dart';

class FlightsSearchResultScreen extends StatelessWidget {
  const FlightsSearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          ZoomIn(
            duration: const Duration(milliseconds: 500),
            child: const FiltrationTextField(),
          ),
          verticalSpace(AppSizes.spaceBtwSections),
          const HeadingText(text: "Search results"),
          const AirToursListView(isFlightCard: true)
        ]),
      ),
    );
  }
}
