// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/utils/constants/styles.dart';
import '../../search_result/air_tour_model.dart';
import 'details_image_card.dart';
import 'details_title_desc.dart';

class ImageFlight extends StatelessWidget {
  const ImageFlight({
    Key? key,
    required this.airTour,
  }) : super(key: key);
  final AirTourModel airTour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppStyles.containerBottomCircularDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsImageCard(airTour: airTour),
          DetailsTitleDesc(airTour: airTour),
        ],
      ),
    );
  }
}
