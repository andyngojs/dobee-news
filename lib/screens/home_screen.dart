import 'dart:convert';
import 'package:dobee_news/routes/app_router.dart';
import 'package:dobee_news/services/api_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final uriImage =
      "https://shopify.github.io/react-native-skia/assets/images/black-and-white-backdrop-filter-0f20781dad92bf75a625d7f680051286.png";
  final ApiService apiService = ApiService();
  List<dynamic> postData = [];

  Future<void> _fetchData() async {
    try {
      final data = await apiService.get('posts', {});
      setState(() {
        postData = jsonDecode(data);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 8, 8, 8),
              child: Row(children: [
                Text('Latest News',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25)),
              ]),
            ),
            Expanded(
              child: postData.isNotEmpty ? ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteName.detailScreen, arguments: {"data": postData[index]});
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(uriImage, width: 100, height: 100),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Column(children: [
                                  SizedBox(
                                    width: screenWidth / 1.5,
                                    child: Text(
                                      postData[index]['title'],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ]),
                              )
                            ]),
                      ),
                    );
                  }): Container(),
            ),
          ]),
    );
  }
}
