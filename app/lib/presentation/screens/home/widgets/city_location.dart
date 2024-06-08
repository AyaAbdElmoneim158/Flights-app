import 'package:app/presentation/core/utils/constants/spacing.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:app/presentation/screens/search_result/search_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';
import 'date_picker_bottom_sheet.dart';

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
        // Navigator.pop(context);
        // openDatePickerBottomSheet();
        Get.to(() => const SearchResultScreen());
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
