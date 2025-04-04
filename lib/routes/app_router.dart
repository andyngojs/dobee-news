import 'package:flutter/material.dart';
import 'package:dobee_news/components/bottom_tab_navigator.dart';
import 'package:dobee_news/screens/screen_a.dart';
import 'package:dobee_news/screens/home_screen.dart';
import 'package:dobee_news/screens/account_screen.dart';
import 'package:dobee_news/screens/detail_screen.dart';

export 'app_router.dart';

class RouteName {
  static const String homeScreen = 'home';
  static const String accountScreen = 'account';
  static const String detailScreen = 'detail';
  static const String screenA = 'screenA';
}

class AppRouter {
  static Route<dynamic> generateRoute(String setting) {
    switch (setting) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.accountScreen:
        return MaterialPageRoute(builder: (context) => const AccountScreen());
      case RouteName.detailScreen:
        return MaterialPageRoute(builder: (context) => const DetailScreen());
      case RouteName.screenA:
        return MaterialPageRoute(builder: (context) => const ScreenA());
      default:
        return MaterialPageRoute(builder: (context) => const BottomTabNavigator());
    }
  }
}
