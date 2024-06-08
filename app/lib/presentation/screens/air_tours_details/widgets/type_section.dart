import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/reusable_widgets/app_text_field.dart';
import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/utils/constants/styles.dart';
import '../../home/widgets/build_minus_and_plus_gray_container.dart';

class TypeSection extends StatelessWidget {
  const TypeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      decoration: AppStyles.containerAllCircularDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingText(text: AppStrings.type),
          Container(
            decoration: AppStyles.textFieldShadow,
            child: AppTextFormField(
              hintText: "Saint-Petersburg",
              contentPadding: EdgeInsets.all(24.w),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              enabled: false,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AppImages.mapPin,
                  height: AppSizes.iconXs,
                ),
              ),
              validator: (val) {},
            ),
          ),
          Container(
            decoration: AppStyles.textFieldShadow,
            child: AppTextFormField(
              contentPadding: EdgeInsets.all(24.w),
              enabled: false,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
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
                  buildMinusAndPlusGrayContainer(AppImages.minus),
                  horizontalSpace(AppSizes.md),
                  Text("1", style: AppStyles.font24Gray800Medium),
                  horizontalSpace(AppSizes.md),
                  buildMinusAndPlusGrayContainer(AppImages.plus),
                  horizontalSpace(AppSizes.md),
                ],
              ),
            ),
          ),
          verticalSpace(AppSizes.spaceBtwInputFields),
        ],
      ),
    );
  }
}
