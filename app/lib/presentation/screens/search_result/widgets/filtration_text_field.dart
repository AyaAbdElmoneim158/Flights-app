import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/reusable_widgets/app_text_field.dart';
import '../../../core/utils/constants/images.dart';
import '../../../core/utils/constants/sizes.dart';

class FiltrationTextField extends StatelessWidget {
  const FiltrationTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
        Expanded(
          child: AppTextFormField(
            hintText: "St. Petersburg, July 30",
            contentPadding: EdgeInsets.all(16.w),
            // enabled: false,
            suffixIcon: GestureDetector(
              onTap: () {
                debugPrint("Filtration");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AppImages.filter,
                  height: AppSizes.iconXs,
                ),
              ),
            ),
            validator: (val) {},
          ),
        ),
      ],
    );
  }
}
