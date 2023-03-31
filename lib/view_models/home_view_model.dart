import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../app/app.dart';
import '../component/display_list_tree.dart';
import '../service/tree_service.dart';
import '../component/loading.dart';

void initApp() {
  TreeService()
      .getTree(homePageController.rows, homePageController.start)
      .then((value) {
    if (value.isNotEmpty) {
      homePageController.addTree(value);
    }
  });
}

bool onNotificationHandler(ScrollNotification scrollInfo) {
  if (!homePageController.isLoading &&
      scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent / 1.8) {
    homePageController.setLoadingTrue();
    homePageController.incrementStart();
    getTreeInScroll();
  }
  return true;
}

void getTreeInScroll() {
  if (networkController.isDeviceConnected) {
    TreeService()
        .getTree(homePageController.rows, homePageController.start)
        .then((value) {
      if (value.isNotEmpty) {
        homePageController.addTree(value);
        homePageController.setLoadingFalse();
      }
    });
  }
}

Widget loadingObserver() {
  return Observer(
      builder: (_) =>
          (homePageController.isLoading) ? loading() : const SizedBox.shrink());
}

Widget treeListObserver(context) {
  return Observer(
    builder: (_) => (homePageController.treeList.length > 0)
        ? scrollListTree(homePageController.treeList, context)
        : loading(),
  );
}
