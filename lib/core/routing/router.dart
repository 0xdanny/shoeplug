import 'package:flutter/material.dart';
import 'package:shoeplug/ui/home/home_screen.dart';

class AppRoutes {
  static const homePage = '/home';
}

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
          settings: settings,
          fullscreenDialog: true,
        );

      default:
        return null;
    }
  }
}
