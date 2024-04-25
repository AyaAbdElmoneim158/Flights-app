import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constants/spacing.dart';
import '../popular_card_model.dart';
import 'popular_card.dart';

class ListViewPopularCard extends StatelessWidget {
  const ListViewPopularCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => index.isEven
            ? FadeInUpBig(
                duration: const Duration(milliseconds: 1000),
                child: PopularCard(
                  popularCard: PopularCardModel.popularCards[index],
                ),
              )
            : FadeInDownBig(
                duration: const Duration(milliseconds: 1000),
                child: PopularCard(
                  popularCard: PopularCardModel.popularCards[index],
                ),
              ),
        separatorBuilder: (_, __) => horizontalSpace(8),
        itemCount: PopularCardModel.popularCards.length,
      ),
    );
  }
}
