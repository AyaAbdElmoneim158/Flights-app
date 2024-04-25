import 'package:animate_do/animate_do.dart';
import 'package:app/presentation/core/helper/helper_functions.dart';
import 'package:app/presentation/core/helper/validator_helper.dart';
import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/reusable_widgets/app_text_field.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/strings.dart';
import 'date_picker_bottom_sheet.dart';

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
        child: const SearchedBox(),
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

class SearchedBox extends StatefulWidget {
  const SearchedBox({
    super.key,
  });

  @override
  State<SearchedBox> createState() => _SearchedBoxState();
}

class _SearchedBoxState extends State<SearchedBox> {
  // String _locationText = 'Tap here to search a place';
  List<String> cities = [
    "Cairo",
    "Alexandria",
    "San Francisco",
    " Berkeley",
    "Saint-Petersburg"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ///* Search - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ZoomIn(
              duration: const Duration(milliseconds: 500),
              child: AppTextFormField(
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
                onChanged: (val) async {
                  ///ToDo: filter
                  setState(() {
                    cities.clear();
                  });
                },
                onTap: () {
                  ///ToDo: Nav to Select date
                  Navigator.pop(context);
                  openDatePickerBottomSheet();
                },
              ),
            ),
            verticalSpace(AppSizes.defaultPadding),

            ///* MyLocation - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
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
            ]),
            // verticalSpace(AppSizes.spaceBtwItems / 2),
            // const Divider(),
            verticalSpace(AppSizes.spaceBtwSections),

            ///* Location-list - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  CityLocation(cityName: cities[index]),
              separatorBuilder: (context, index) =>
                  verticalSpace(AppSizes.spaceBtwSections),
              itemCount: cities.length,
            ),

            ///* Next - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            /*AppTextButton(
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
            ),*/
          ],
        ),
      ),
    );
  }
}

class CityLocation extends StatelessWidget {
  const CityLocation({
    super.key,
    required this.cityName,
  });
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        openDatePickerBottomSheet();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.mapPin,
            height: AppSizes.iconMd,
          ),
          horizontalSpace(AppSizes.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cityName, style: AppStyles.font16Gray800Regular),
              Text("Russia", style: AppStyles.font14Gray400Regular),
            ],
          ),
        ],
      ),
    );
  }
}
//! https://stackoverflow.com/questions/75865463/flutter-how-to-create-a-search-bar-using-a-text-field-widget
