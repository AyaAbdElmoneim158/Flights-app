import 'package:app/presentation/screens/air_tours_details/widgets/info_duration_or_start_flight_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../../core/utils/constants/strings.dart';
import '../../core/utils/constants/styles.dart';
import '../search_result/widgets/air_tours_list_view.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  bool isAirTours = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultPadding),
          child: Column(
            children: [
              verticalSpace(AppSizes.appBarHeight),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppStrings.favorites,
                  style: AppStyles.font21AccentBold,
                ),
              ),
              verticalSpace(AppSizes.spaceBtwSections),
              SizedBox(
                height: 35.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    InfoDurationOrStartFlightWidget(
                        duration: "Air tours",
                        realTime: isAirTours,
                        onTap: () => setState(() => isAirTours = true)),
                    horizontalSpace(AppSizes.spaceBtwItems),
                    InfoDurationOrStartFlightWidget(
                        duration: "Flights",
                        realTime: !isAirTours,
                        onTap: () => setState(() => isAirTours = false)),
                  ],
                ),
              ),
              verticalSpace(AppSizes.spaceBtwSections),
              isAirTours
                  ? const AirToursListView()
                  : const AirToursListView(isFlightCard: true)
            ],
          ),
        ),
      ),
    );
  }
}
