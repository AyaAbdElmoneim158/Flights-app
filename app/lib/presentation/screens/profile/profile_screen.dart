import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../core/utils/constants/colors.dart';
import '../../core/utils/constants/images.dart';
import '../../core/utils/constants/sizes.dart';
import '../../core/utils/constants/spacing.dart';
import '../../core/utils/constants/styles.dart';
import 'sub_screens/customer_service_screen.dart';
import 'sub_screens/my_tickets_screen.dart';
import 'sub_screens/notifications_screen.dart';
import 'sub_screens/settings_screen.dart';
import 'widgets/logout_by_bottom_sheet.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          const UserInfoSection(),
          verticalSpace(AppSizes.spaceBtwSections),
          const PagesCardsSection()
        ],
      ),
    );
  }
}

class PagesCardsSection extends StatelessWidget {
  const PagesCardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              onTap: () => Get.to(() => const NotificationsScreen()),
            ),
            Column(children: [
              ProfileGrayCard(
                text: "My tickets",
                image: AppImages.creditCard,
                cardBorderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                onTap: () => Get.to(() => const MyTicketsScreen()),
              ),
              ProfileGrayCard(
                text: "My cards",
                image: AppImages.notification,
                cardBorderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
                // rightWidget: Text("Right"),
              ),
            ]),
            Column(children: [
              ProfileGrayCard(
                text: "Customer Service",
                image: AppImages.chatCenteredDots,
                cardBorderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                onTap: () => Get.to(() => const CustomerServiceScreen()),
              ),
              ProfileGrayCard(
                text: "Settings",
                image: AppImages.gearSix,
                cardBorderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                onTap: () => Get.to(() => const SettingsScreen()),
              ),
            ]),
            ProfileGrayCard(
                text: "Logout",
                image: AppImages.xCircle,
                onTap: () {
                  logoutByBottomSheet(context);
                }),
          ],
        ),
      ),
    );
  }
}

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class ProfileGrayCard extends StatelessWidget {
  const ProfileGrayCard({
    super.key,
    required this.text,
    required this.image,
    this.rightWidget,
    this.cardBorderRadius,
    this.onTap,
  });
  final String text;
  final String image;
  final Widget? rightWidget;
  final BorderRadiusGeometry? cardBorderRadius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppSizes.sm),
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: cardBorderRadius ?? BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(image),
                horizontalSpace(AppSizes.sm),
                Text(
                  text,
                  style: AppStyles.font14Gray800Regular,
                ),
              ],
            ),
            rightWidget ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
