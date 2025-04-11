import 'package:dobee_news/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:dobee_news/components/bottom_tab_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent
      ),
      home: const MyHomePage(),
      routes: AppRouter.routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const BottomTabNavigator();
  }
}
