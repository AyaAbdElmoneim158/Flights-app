import 'package:app/presentation/core/reusable_widgets/heading_text.dart';
import 'package:app/presentation/core/utils/constants/sizes.dart';
import 'package:app/presentation/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

import 'air_tours_list_view.dart';

class AirToursSection extends StatelessWidget {
  const AirToursSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      decoration: AppStyles.containerTopCircularDecoration,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [HeadingText(text: "Air tours"), AirToursListView()],
      ),
    );
  }
}
