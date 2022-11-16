import 'package:flutter/material.dart';
import 'package:qktrade_app/screens/splash/splash_screen.dart';
import '../constents/routes.dart';
import '../screens/reports/reports_tab_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final _args = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case Routes.report:
        return MaterialPageRoute(
          builder: (context) => const ReportsTabScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() => MaterialPageRoute(builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      });
}
