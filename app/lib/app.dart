import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => GetMaterialApp(
        title: "Flights App",
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Flights App"),
          ),
          body: const Center(child: Text("Flights App")),
        ),
      ),
    );
  }
}
/*

 */