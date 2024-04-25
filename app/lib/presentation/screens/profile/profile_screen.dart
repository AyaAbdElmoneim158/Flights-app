import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/images.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../../core/utils/constants/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppSizes.defaultPadding),
            decoration: AppStyles.containerBottomCircularDecoration,
            child: Column(
              children: [
                verticalSpace(AppSizes.appBarHeight),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage(AppImages.david),
                    ),
                    Positioned(
                      // right: AppSizes.lg,
                      // top: AppSizes.lg * 2,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff475159).withOpacity(0.15),
                              spreadRadius: 0,
                              blurRadius: 20,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.edit),
                      ),
                    )
                  ],
                ),
                Text(
                  "David J",
                  style: AppStyles.font24Gray800SemiBold,
                ),
                Text(
                  "+1 555 555 55 55",
                  style: AppStyles.font14Gray500Medium,
                ),
                verticalSpace(AppSizes.spaceBtwSections),
              ],
            ),
          ),
          verticalSpace(AppSizes.spaceBtwSections),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppSizes.defaultPadding),
              decoration: AppStyles.containerTopCircularDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileGrayCard(
                    text: "Notifications",
                    image: AppImages.bellSimple,
                  ),
                  Column(children: [
                    ProfileGrayCard(
                      text: "My tickets",
                      image: AppImages.creditCard,
                    ),
                    ProfileGrayCard(
                      text: "My cards",
                      image: AppImages.notification,
                    ),
                  ]),
                  Column(children: [
                    ProfileGrayCard(
                      text: "Customer Service",
                      image: AppImages.chatCenteredDots,
                    ),
                    ProfileGrayCard(
                      text: "Settings",
                      image: AppImages.gearSix,
                    ),
                  ]),
                  ProfileGrayCard(
                    text: "Logout",
                    image: AppImages.xCircle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileGrayCard extends StatelessWidget {
  const ProfileGrayCard({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
          color: AppColors.lightGray, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          SvgPicture.asset(image),
          horizontalSpace(AppSizes.sm),
          Text(
            text,
            style: AppStyles.font14Gray800Regular,
          ),
        ],
      ),
    );
  }
}
