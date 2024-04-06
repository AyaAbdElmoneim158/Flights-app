import 'package:flutter/material.dart';
import '../../../core/utils/constants/spacing.dart';
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
        itemBuilder: (context, index) => const PopularCard(),
        separatorBuilder: (_, __) => horizontalSpace(8),
        itemCount: 6,
      ),
    );
  }
}
