import 'package:dobee_news/routes/app_router.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Text('Hello World'),
        TextButton(
            onPressed: () => {
                  Navigator.of(context)
                      .push(AppRouter.generateRoute(RouteName.detailScreen))
                },
            child: const Text('naviagte to detail'))
      ],
    ));
  }
}
