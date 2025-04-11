import 'package:flutter/material.dart';
import 'package:dobee_news/components/bottom_tab_navigator.dart';
import 'package:dobee_news/screens/home_screen.dart';
import 'package:dobee_news/screens/account_screen.dart';
import 'package:dobee_news/screens/detail_screen.dart';

export 'app_router.dart';

class RouteName {
  static const String homeScreen = 'home';
  static const String accountScreen = 'account';
  static const String detailScreen = 'detail';
}

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    RouteName.homeScreen: (context) => const HomeScreen(),
    RouteName.detailScreen: (context) => const DetailScreen(),
    RouteName.accountScreen: (context) => const AccountScreen()
  };

  static Route<dynamic> generateRoute(String setting) {
    switch (setting) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.accountScreen:
        return MaterialPageRoute(builder: (context) => const AccountScreen());
      case RouteName.detailScreen:
        return MaterialPageRoute(builder: (context) => const DetailScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const BottomTabNavigator());
    }
  }
}

class Navigation {
  static void push(BuildContext context, String screen) {
    Navigator.of(context).push(AppRouter.generateRoute(screen));
  }

  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
