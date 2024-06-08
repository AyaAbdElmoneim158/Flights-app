import 'package:app/presentation/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constants/styles.dart';
import '../models/helper_card_model.dart';

class HelperInfoImageCard extends StatelessWidget {
  const HelperInfoImageCard({
    super.key,
    required this.card,
  });

  final HelperCardModel card;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: 110,
      height: 135,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primary,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              card.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              card.text,
              style: AppStyles.font10Gray25SemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
