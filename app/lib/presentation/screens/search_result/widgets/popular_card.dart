import 'package:flutter/material.dart';

import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../popular_card_model.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
    required this.popularCard,
  });
  final PopularCardModel popularCard;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              popularCard.image,
              width: 118,
              height: 118,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(AppSizes.spaceBtwItems / 2),
          Text(popularCard.text)
        ],
      ),
    );
  }
}
