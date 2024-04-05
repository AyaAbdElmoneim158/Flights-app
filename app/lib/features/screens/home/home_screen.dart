import 'package:app/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import 'helper_card_model.dart';
import 'widgets/header_form.dart';
import 'widgets/helper_info_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double topPadding = AppSizes.appBarHeight - AppSizes.defaultPadding;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderForm(topPadding: topPadding),
              verticalSpace(AppSizes.spaceBtwSections),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(AppSizes.defaultPadding),
                decoration: AppStyles.containerTopCircularDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(text: AppStrings.helpfulInformation),
                    verticalSpace(AppSizes.spaceBtwItems),
                    const HelperInfoListView()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HelperInfoListView extends StatelessWidget {
  const HelperInfoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            HelperInfoSection(card: HelperCardModel.helperCards[index]),
        separatorBuilder: (_, __) => horizontalSpace(8),
        itemCount: HelperCardModel.helperCards.length,
      ),
    );
  }
}
