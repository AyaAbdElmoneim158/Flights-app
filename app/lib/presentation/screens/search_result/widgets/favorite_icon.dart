import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.gray25.withOpacity(0.5),
          radius: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: AppColors.gray25,
          ),
        ),
      ],
    );
  }
}
