import 'package:aden/presentation/screens/dashboard_screen.dart';
import 'package:aden/presentation/screens/map_screen.dart';
import 'package:aden/presentation/screens/splash_screen.dart';
import 'package:aden/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.SPLASH: (context) => const SplashScreen(),
    AppRoutes.DASHBOARD: (context) => DashboardScreen(),
    AppRoutes.MAP: (context) => const MapScreen(),
  };
}
