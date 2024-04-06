import 'package:flutter/material.dart';
import '../../../core/reusable_widgets/app_button.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/styles.dart';

class BookForBtn extends StatelessWidget {
  const BookForBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      child: AppTextButton(
        buttonText: "Book for 10,000 ₽",
        textStyle: AppStyles.font16BlueMedium.copyWith(
          color: AppColors.white,
        ),
        onPressed: () {
          debugPrint("Paid");
          // Get.to(() => const SuccessPaymentScreen());
        },
        buttonWidth: double.infinity,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
