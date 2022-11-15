import 'package:flutter/material.dart';
import '../screens/customer/customer_tab_screen.dart';
import '../screens/report/report_tab_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case CustomerTabScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const CustomerTabScreen(),
        );
      case ReportTabScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const ReportTabScreen(),
        );
      default:
        return null;
    }
  }
}
