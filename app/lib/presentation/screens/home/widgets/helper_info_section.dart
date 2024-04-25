import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/heading_text.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/utils/constants/styles.dart';
import 'helper_info_list_view.dart';

class HelperInfoSection extends StatelessWidget {
  const HelperInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        decoration: AppStyles.containerTopCircularDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FadeInLeftBig(
              duration: const Duration(milliseconds: 1500),
              child: HeadingText(
                text: AppStrings.helpfulInformation,
              ),
            ),
            const HelperInfoListView()
          ],
        ),
      ),
    );
  }
}
