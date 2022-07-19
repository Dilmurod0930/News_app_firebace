import 'package:flutter/material.dart';
import 'package:news_app_firbace/screens/home/home_view.dart';
import 'package:news_app_firbace/screens/hot_page.dart';
import 'package:news_app_firbace/screens/single_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case "/hot":
        return MaterialPageRoute(
          builder: (context) => const HotPage(),
        );
      case "/single":
        return MaterialPageRoute(
          builder: (context) => const SinglePage(),
        );
    }
    return null;
  }
}
