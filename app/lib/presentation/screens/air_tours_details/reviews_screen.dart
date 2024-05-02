import 'package:app/presentation/core/utils/constants/images.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../../core/utils/constants/styles.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Customer reviews",
          style: AppStyles.font16Gray800Medium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultPadding),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 7,
            separatorBuilder: (context, index) =>
                verticalSpace(AppSizes.spaceBtwItems),
            itemBuilder: (context, index) => const ReviewCard(),
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(AppSizes.lg),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff475159).withOpacity(0.15),
                  offset: const Offset(0, 3),
                  spreadRadius: 0,
                  blurRadius: 20,
                ),
              ]),
          child: Column(
            children: [
              Row(children: [
                Image.asset(AppImages.ivan),
                horizontalSpace(AppSizes.spaceBtwItems),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Ivan',
                    style: AppStyles.font18WhiteMedium
                        .copyWith(color: AppColors.gray800),
                  ),
                  Text(
                    'May 21, 2022',
                    style: AppStyles.font12Gray800Regular
                        .copyWith(color: AppColors.secondary),
                  )
                ]),
              ]),
              verticalSpace(AppSizes.spaceBtwItems),
              Row(children: [
                for (var i = 0; i < 5; i++)
                  const Icon(
                    Icons.star_rate_rounded,
                    color: AppColors.warning300,
                    size: 12,
                  ),
                horizontalSpace(AppSizes.spaceBtwItems / 3),
                Text(
                  '5',
                  style: AppStyles.font12Gray800Regular,
                ),
              ]),
              verticalSpace(AppSizes.spaceBtwItems),
              Text(
                "The flights are excellent! The airfield is located in a picturesque place and there is a lot to admire from above.",
                style: AppStyles.font14Gray600Regular,
              )
            ],
          ),
        ),
      ],
    );
  }
}
