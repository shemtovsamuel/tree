import 'package:flutter/material.dart';

import '../controller/home_page_controller.dart';
import '../controller/network_controller.dart';
import '../route/home_page.dart';

HomePageController homePageController = HomePageController();
NetworkController networkController = NetworkController();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
