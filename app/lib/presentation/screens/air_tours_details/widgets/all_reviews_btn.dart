import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/reusable_widgets/app_button.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/styles.dart';
import '../reviews_screen.dart';

class AllReviewsBtn extends StatelessWidget {
  const AllReviewsBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      child: AppTextButton(
        buttonText: "All reviews",
        textStyle: AppStyles.font16BlueMedium,
        onPressed: () {
          Get.to(() => const ReviewsScreen());
        },
        buttonWidth: double.infinity,
        backgroundColor: AppColors.white,
      ),
    );
  }
}
