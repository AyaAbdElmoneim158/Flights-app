import 'package:app/presentation/core/helper/helper_functions.dart';
import 'package:app/presentation/core/helper/validator_helper.dart';
import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/reusable_widgets/app_button.dart';
import '../../../core/reusable_widgets/app_text_field.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/strings.dart';
import 'date_picker_bottom_sheet.dart';
// ToDo:(handel) import 'package:search_field_autocomplete/search_field_autocomplete.dart';

void openSearchBottomSheet() {
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AppTextFormField(
                hintText: AppStrings.whereToFind,
                contentPadding: EdgeInsets.all(20.w),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    AppImages.search,
                    height: AppSizes.iconXs,
                  ),
                ),
                validator: (val) =>
                    AppValidator.validateEmptyText("Search", val),
              ),
              verticalSpace(AppSizes.defaultPadding),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset(
                    AppImages.gps,
                    height: AppSizes.iconLg,
                  ),
                ),
                horizontalSpace(AppSizes.sm),
                Text(
                  AppStrings.myLocation,
                  style: AppStyles.font14AccentMedium,
                ),
                /* SizedBox(
                      height: 300,
                      child: SearchFieldAutoComplete<String>(
                        suggestions: [
                          SearchFieldAutoCompleteItem<String>(
                              searchKey: 'Apple', value: 'apple'),
                          SearchFieldAutoCompleteItem<String>(
                              searchKey: 'Banana', value: 'banana'),
                          SearchFieldAutoCompleteItem<String>(
                              searchKey: 'Cherry', value: 'cherry'),
                          SearchFieldAutoCompleteItem<String>(
                              searchKey: 'Date', value: 'date'),
                          SearchFieldAutoCompleteItem<String>(
                              searchKey: 'Fig', value: 'fig'),
                          SearchFieldAutoCompleteItem<String>(
                              searchKey: 'Grapes', value: 'grapes'),
                          SearchFieldAutoCompleteItem<String>(
                              searchKey: 'Kiwi', value: 'kiwi'),
                        ],
                        onSuggestionSelected: (value) {
                          // Handle the selected suggestion
                          print('Selected: $value');
                        },
                      ),
                    ),*/
              ]),
              verticalSpace(AppSizes.defaultPadding),
              AppTextButton(
                buttonText: "Next",
                textStyle: AppStyles.font16BlueMedium.copyWith(
                  color: AppColors.white,
                ),
                onPressed: () {
                  Get.back();
                  debugPrint("OnTap: AppTextButton!");
                  openDatePickerBottomSheet();
                },
                buttonWidth: double.infinity,
                backgroundColor: AppColors.primary,
              ),
            ],
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
