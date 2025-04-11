import 'package:flutter/material.dart';

import '../routes/app_router.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, this.title});

  final String? title;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;

    print("argument $args");

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail'),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(child: Column(
        children: [
          const Text(""),
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
