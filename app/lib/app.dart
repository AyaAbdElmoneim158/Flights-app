import 'package:app/presentation/core/utils/routing/router.dart';
import 'package:app/presentation/core/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'presentation/core/utils/constants/strings.dart';
import 'presentation/core/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => GetMaterialApp(
        title: AppStrings.appTitle,
        themeMode: ThemeMode.light,
        theme: AppAppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboarding,
        onGenerateRoute: AppRouter.onGenerate,
        // home:
        //     /*Scaffold(
        //     appBar: AppBar(
        //       title: const Text("Appbar"),
        //     ),
        //   )*/
        //     const ProfileScreen(),
      ),
    );
  }
}
