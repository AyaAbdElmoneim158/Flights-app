import 'package:flutter/material.dart';

import '../../../../core/utils/constants/spacing.dart';
import '../helper_card_model.dart';
import 'helper_info_image_card.dart';

class HelperInfoListView extends StatelessWidget {
  const HelperInfoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => HelperInfoImageCard(
          card: HelperCardModel.helperCards[index],
        ),
        separatorBuilder: (_, __) => horizontalSpace(8),
        itemCount: HelperCardModel.helperCards.length,
      ),
    );
  }
}
