// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/presentation/core/utils/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/reusable_widgets/app_button.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';

class MyTicketsDetailsScreen extends StatelessWidget {
  const MyTicketsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "673-843",
          style: AppStyles.font16Gray800Medium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(AppSizes.xl),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff101828).withOpacity(0.2),
                        offset: const Offset(0, 32),
                        spreadRadius: 0,
                        blurRadius: 64,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset(AppImages.planCard),
                    Text(
                      "Cessna 172 familiarization flight from Kronstadt",
                      style: AppStyles.font14Gray800Medium,
                    ),
                    const Divider(color: AppColors.gray100),
                    verticalSpace(AppSizes.md),
                    const GridSection(),
                    const Divider(color: AppColors.gray100),
                    verticalSpace(AppSizes.md),
                    Image.asset(AppImages.bar),
                    verticalSpace(AppSizes.sm),
                    Text(
                      "673-843",
                      style: AppStyles.font12Gray800Regular,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -16.h,
                child: AppTextButton(
                  buttonText: "2000 ₽",
                  textStyle: AppStyles.font18WhiteMedium,
                  onPressed: () {},
                  borderRadius: 50.w,
                  buttonHeight: 32.h,
                ),
              ),
              Positioned(
                left: -16,
                bottom: 124.h,
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.backgroundColor,
                ),
              ),
              Positioned(
                right: -16,
                bottom: 124.h,
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.backgroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridSection extends StatelessWidget {
  const GridSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.lg,
        mainAxisSpacing: AppSizes.lg,
        childAspectRatio: 16 / 7,
      ),
      children: const [
        GridInfo(
          text: "Date of flight",
          subText: "30.07.2022",
        ),
        GridInfo(
          text: "Airfield",
          subText: "Bychye Polye",
        ),
        GridInfo(
          text: "Departure time",
          subText: "13:30",
        ),
        GridInfo(
          text: "Flight duration",
          subText: "50 min",
        ),
      ],
    );
  }
}

class GridInfo extends StatelessWidget {
  const GridInfo({
    Key? key,
    required this.text,
    required this.subText,
  }) : super(key: key);
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: AppStyles.font12Gray500Regular,
        ),
        Text(
          subText,
          style: AppStyles.font12Gray800Medium,
        ),
      ],
    );
  }
}
