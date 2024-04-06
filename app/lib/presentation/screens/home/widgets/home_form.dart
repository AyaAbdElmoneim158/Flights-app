import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/reusable_widgets/app_button.dart';
import '../../../core/reusable_widgets/app_text_field.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/utils/constants/styles.dart';
import 'search_bottom_sheet.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              debugPrint("OnTap: showMaterialModalBottomSheet");
              openSearchBottomSheet();
            },
            child: Container(
              decoration: AppStyles.textFieldShadow,
              child: AppTextFormField(
                hintText: AppStrings.whereToFind,
                contentPadding: EdgeInsets.all(24.w),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                enabled: false,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    AppImages.mapPin,
                    height: AppSizes.iconXs,
                  ),
                ),
                validator: (val) {},
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              debugPrint("OnTap: showMaterialModalBottomSheet");
              openSearchBottomSheet();
            },
            child: Container(
              decoration: AppStyles.textFieldShadow,
              child: AppTextFormField(
                contentPadding: EdgeInsets.all(24.w),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                enabled: false,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    AppImages.calendarBlank,
                    height: AppSizes.iconXs,
                  ),
                ),
                hintText: AppStrings.sundayJuly30,
                validator: (val) {},
              ),
            ),
          ),
          verticalSpace(AppSizes.spaceBtwInputFields),
          GestureDetector(
            onTap: () {
              debugPrint("OnTap: showMaterialModalBottomSheet");
              openSearchBottomSheet();
            },
            child: Container(
              decoration: AppStyles.textFieldShadow,
              child: AppTextFormField(
                contentPadding: EdgeInsets.all(24.w),
                enabled: false,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    AppImages.smileyWink,
                    height: AppSizes.iconXs,
                  ),
                ),
                hintText: AppStrings.passengers,
                validator: (val) {},
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildGrayContainer(AppImages.minus),
                    horizontalSpace(AppSizes.md),
                    Text(
                      "1",
                      style: AppStyles.font24Gray800Medium,
                    ),
                    horizontalSpace(AppSizes.md),
                    buildGrayContainer(AppImages.plus),
                    horizontalSpace(AppSizes.md),
                  ],
                ),
              ),
            ),
          ),
          verticalSpace(AppSizes.spaceBtwInputFields),
          AppTextButton(
            buttonText: AppStrings.findTour,
            textStyle: AppStyles.font16BlueMedium.copyWith(
              color: AppColors.white,
            ),
            onPressed: () {
              debugPrint("OnTap: AppTextButton!");
              openSearchBottomSheet();
            },
            buttonWidth: double.infinity,
            backgroundColor: AppColors.primary,
          ),
        ],
      ),
    );
  }
}

Container buildGrayContainer(String asset) {
  return Container(
    width: 28,
    height: 28,
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Image.asset(
      asset,
      height: AppSizes.iconXs,
    ),
  );
}
