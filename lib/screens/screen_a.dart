import 'package:dobee_news/routes/app_router.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ScreenA> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Hello World'),
            TextButton(onPressed: () => {
              Navigator.of(context).pop()
            }, child: const Text('naviagte to home'))
          ],
        ),
      ),
    );
  }
}
