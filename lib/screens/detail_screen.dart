import 'package:flutter/material.dart';

import '../routes/app_router.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail'),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(child: Column(
        children: [
          const Text('Hello World'),
          TextButton(
              onPressed: () => {
                Navigator.of(context).pop()
              },
              child: const Text('naviagte to detail'))
        ],
      )),
    );
  }
}
