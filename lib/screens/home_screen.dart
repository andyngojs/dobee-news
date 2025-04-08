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
        Row(children: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.horizontal_rule, color: Colors.black, size: 25),),
          const Text('Latest News', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25))
        ]),
        TextButton(
            onPressed: () => {
                  Navigator.of(context).push(AppRouter.generateRoute(RouteName.detailScreen))
                },
            child: const Text('navigate to detail'))
      ],
    ));
  }
}
