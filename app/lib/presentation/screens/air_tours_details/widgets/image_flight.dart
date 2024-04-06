import 'package:flutter/material.dart';
import '../../../core/utils/constants/styles.dart';
import 'details_image_card.dart';
import 'details_title_desc.dart';

class ImageFlight extends StatelessWidget {
  const ImageFlight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppStyles.containerBottomCircularDecoration,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsImageCard(),
          DetailsTitleDesc(),
        ],
      ),
    );
  }
}
