import 'package:app/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../../screens/favorites/favorites_screen.dart';
// import '../../../screens/search_result/search_result_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route? onGenerate(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.initRoute: // final args = settings.arguments as String;
        return pageTransition(
          settings,
          const Placeholder(),
        );

      case Routes.testPage:
        return pageTransition(
          settings,
          const FavoritesScreen(),
        );
      case Routes.onboarding:
        return pageTransition(
          settings,
          const OnboardingScreen(),
        );
      case Routes.noFoundRoute:
      default:
        return pageTransition(
          settings,
          const NotFoundPage(),
        );
    }
  }

  static PageTransition<dynamic> pageTransition(
    RouteSettings settings,
    Widget screen, {
    PageTransitionType type = PageTransitionType.fade,
  }) {
    return PageTransition(
      type: type,
      child: screen,
      settings: settings,
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/128/7486/7486789.png',
              width: 250,
            ),
            const SizedBox(height: 12),
            Text(
              'Sorry, this page was not found',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: const Color(0xFF83839c),
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
