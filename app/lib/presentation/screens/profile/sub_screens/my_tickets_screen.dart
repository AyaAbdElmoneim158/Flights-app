import 'package:animate_do/animate_do.dart';
import 'package:app/presentation/core/reusable_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';
import 'My_tickets_details_screen.dart';

class MyTicketsScreen extends StatelessWidget {
  const MyTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My tickets",
          style: AppStyles.font16Gray800Medium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: SingleChildScrollView(
          child: ZoomIn(
            duration: const Duration(milliseconds: 500),
            child: TodayTicketsSection(
              onTap: () => Get.to(() => const MyTicketsDetailsScreen()),
            ),
          ),
        ),
      ),
    );
  }
}

class TodayTicketsSection extends StatelessWidget {
  const TodayTicketsSection({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeadingMyTickets(text: "Today"),
          verticalSpace(AppSizes.md),
          Container(
            padding: EdgeInsets.all(AppSizes.md - 4),
            decoration: BoxDecoration(
              color: AppColors.lightGray.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "673-843",
                      style: AppStyles.font16Gray800Medium,
                    ),
                    AppTextButton(
                      buttonText: "2000 ₽",
                      textStyle: AppStyles.font18WhiteMedium,
                      onPressed: () {},
                      borderRadius: 50.w,
                      buttonHeight: 18.h,
                    ),
                  ],
                ),
                verticalSpace(AppSizes.sm),
                Text(
                  "Cessna 172 familiarization flight from Kronstadt",
                  style: AppStyles.font12Gray800Regular,
                ),
                verticalSpace(AppSizes.sm),
                Text(
                  "Airfield: Bychye Polye, July 30th",
                  style: AppStyles.font12Gray500Regular,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeadingMyTickets extends StatelessWidget {
  const HeadingMyTickets({
    super.key,
    this.text,
  });
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: AppStyles.font14Gray600Regular,
    );
  }
}
