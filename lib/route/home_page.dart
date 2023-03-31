import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../component/button/button_open_map.dart';
import '../service/handling_connectivity.dart';
import '../view_models/home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Dio dio;

  @override
  void initState() {
    getConnectivity(context);
    super.initState();
    initApp();
    dio = Dio();
  }

  @override
  void dispose() {
    cancelStreamSubscription();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Tree 🌳"), backgroundColor: Colors.green),
      body: Observer(builder: (_) {
        return process();
      }),
    );
  }

  Widget process() {
    return SafeArea(
      child: Stack(
        children: [
          treeListObserver(context),
          DisplayHandlingError(),
          loadingObserver(),
          ButtonOpenMap(context),
        ],
      ),
    );
  }
}
