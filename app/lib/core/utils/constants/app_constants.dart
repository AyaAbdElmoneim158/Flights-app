import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'images.dart';
import 'strings.dart';

class AppConstants {
  AppConstants._();

  static List<BottomNavigationBarItem> items(int currentIndex) => [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
              (currentIndex == 0) ? AppImages.exploreFill : AppImages.explore),
          label: AppStrings.explore,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset((currentIndex == 1)
              ? AppImages.airplaneFill
              : AppImages.airplane),
          label: AppStrings.airplane,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
              (currentIndex == 2) ? AppImages.lovelyFill : AppImages.lovely),
          label: AppStrings.lovely,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
              (currentIndex == 3) ? AppImages.profileFill : AppImages.profile),
          label: AppStrings.profile,
        ),
      ];

  static List<Widget> screens = const [
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
    Center(child: Text("4")),
  ];
}
