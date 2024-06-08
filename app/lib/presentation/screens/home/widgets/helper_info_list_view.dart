import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants/spacing.dart';
import '../models/helper_card_model.dart';
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
        itemBuilder: (context, index) => index.isEven
            ? FadeInUpBig(
                duration: const Duration(milliseconds: 1700),
                child: HelperInfoImageCard(
                  card: HelperCardModel.helperCards[index],
                ),
              )
            : FadeInDownBig(
                duration: const Duration(milliseconds: 1700),
                child: HelperInfoImageCard(
                  card: HelperCardModel.helperCards[index],
                ),
              ),
        separatorBuilder: (_, __) => horizontalSpace(8),
        itemCount: HelperCardModel.helperCards.length,
      ),
    );
  }
}
