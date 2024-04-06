import 'package:flutter/material.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import 'widgets/header_form.dart';
import 'widgets/helper_info_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double topPadding = AppSizes.appBarHeight;
    //-AppSizes.defaultPadding;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            HeaderForm(topPadding: topPadding),
            verticalSpace(AppSizes.spaceBtwSections),
            const HelperInfoSection(),
          ],
        ),
      ),
    );
  }
}
