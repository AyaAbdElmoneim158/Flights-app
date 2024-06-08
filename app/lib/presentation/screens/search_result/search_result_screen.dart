import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:app/presentation/screens/search_result/widgets/air_tours_section.dart';
import 'package:flutter/material.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import 'widgets/popular_section.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PopularSection(),
            verticalSpace(AppSizes.spaceBtwSections),
            const AirToursSection(),
          ],
        ),
      ),
    );
  }
}
