import 'package:flutter/material.dart';
import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/utils/constants/styles.dart';
import 'filtration_text_field.dart';
import 'list_view_popular_card.dart';
import 'package:animate_do/animate_do.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      decoration: AppStyles.containerBottomCircularDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(AppSizes.defaultPadding / 2),
          ZoomIn(
            duration: const Duration(milliseconds: 500),
            child: const FiltrationTextField(),
          ),
          verticalSpace(AppSizes.spaceBtwItems),
          FadeInLeftBig(
            duration: const Duration(milliseconds: 750),
            child: HeadingText(text: AppStrings.popular),
          ),
          const ListViewPopularCard(),
        ],
      ),
    );
  }
}
