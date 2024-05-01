// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/presentation/core/utils/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/constants/spacing.dart';
import '../../../core/utils/constants/styles.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notifications",
          style: AppStyles.font16Gray800Medium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const NotifiesToday(),
              verticalSpace(AppSizes.xl),
              const NotifiesNovember162021(),
              verticalSpace(AppSizes.xl),
              const NotifiesNovember142021(),
            ],
          ),
        ),
      ),
    );
  }
}

class NotifiesNovember142021 extends StatelessWidget {
  const NotifiesNovember142021({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingNotifies(text: "November 14, 2021"),
        verticalSpace(AppSizes.md),
        NotifyCard(
          text: "Air tour has been processed",
          desc: "Airfield: Bychye Polye, November 16",
          image: AppImages.air,
        ),
        verticalSpace(AppSizes.md),
        NotifyCard(
          text: "Welcome to Flights ",
          desc: "Enjoy your flights and have a great experience!",
          image: AppImages.welcome,
        ),
      ],
    );
  }
}

class NotifiesNovember162021 extends StatelessWidget {
  const NotifiesNovember162021({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingNotifies(text: "November 16, 2021"),
        verticalSpace(AppSizes.md),
        NotifyCard(
          text: "Refund issued",
          desc: "Airfield: Bychye Polye, November 16",
          image: AppImages.airField,
        ),
        verticalSpace(AppSizes.md),
        NotifyCard(
          text: "Flight for November 16 canceled",
          desc: "Inclement weather",
          image: AppImages.weather,
        ),
      ],
    );
  }
}

class NotifiesToday extends StatelessWidget {
  const NotifiesToday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingNotifies(text: "Today"),
        verticalSpace(AppSizes.md),
        NotifyCard(
          text: "Air tour has been processed",
          desc: "Airfield: Bychye Polye, July 30th",
          image: AppImages.air,
        ),
      ],
    );
  }
}

class HeadingNotifies extends StatelessWidget {
  const HeadingNotifies({
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

class NotifyCard extends StatelessWidget {
  const NotifyCard({
    Key? key,
    this.text,
    this.desc,
    this.image,
  }) : super(key: key);
  final String? text;
  final String? desc;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.md - 4),
      decoration: BoxDecoration(
        color: AppColors.lightGray.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(image ?? AppImages.air),
          horizontalSpace(AppSizes.spaceBtwItems),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text ?? '',
                  style: AppStyles.font16Gray800Medium,
                ),
                Text(
                  desc ?? '',
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
