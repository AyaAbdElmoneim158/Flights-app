import 'package:app/presentation/screens/favorites/favorites_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../screens/flights/flights_screen.dart';
import '../../../screens/home/home_screen.dart';
import '../../../screens/profile/profile_screen.dart';
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
    HomeScreen(),
    FlightsScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  static List<String> durations = [
    "20 min",
    "35 min",
    "40 min",
    "50 min",
    "60 min",
    "2 hr"
  ];

  static List<String> startFlight = [
    "7:00",
    "9:00",
    "11:00",
    "13:00",
    "15:00",
    "17:00",
  ];
}
