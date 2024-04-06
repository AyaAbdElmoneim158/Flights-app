import 'package:app/presentation/core/helper/helper_functions.dart';
import 'package:app/presentation/core/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../core/reusable_widgets/app_button.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import '../../search_result/search_result_screen.dart';

void openDatePickerBottomSheet() {
  Get.bottomSheet(
    isScrollControlled: true,
    SingleChildScrollView(
      child: Container(
        height: AppHelperFunctions.screenHeight() - AppSizes.appBarHeight * 2,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Date"),
                  verticalSpace(AppSizes.defaultPadding),
                  AppTextButton(
                    buttonText: AppStrings.findTour,
                    textStyle: AppStyles.font16BlueMedium.copyWith(
                      color: AppColors.white,
                    ),
                    onPressed: () => Get.to(() => const SearchResultScreen()),
                    buttonWidth: double.infinity,
                    backgroundColor: AppColors.primary,
                  ),
                ],
              )
              // SfDateRangePicker(
              //   enableMultiView: true,
              //   viewSpacing: 20,
              //   headerStyle: const DateRangePickerHeaderStyle(
              //     textAlign: TextAlign.center,
              //   ),
              // ),

              ),
        ),
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
