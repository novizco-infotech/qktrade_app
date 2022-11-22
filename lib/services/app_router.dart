import 'package:flutter/material.dart';
import '../screens/customer/customer_tab_screen.dart';
import '../screens/report/report_tab_screen.dart';
import '../screens/splash/splash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    final _args = routeSettings.arguments;
    switch (routeSettings.name) {
      case CustomerTabScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const CustomerTabScreen(),
        );
      case ReportTabScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const ReportTabScreen(),
        );
      case SplashScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
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
