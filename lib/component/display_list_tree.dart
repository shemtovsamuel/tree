import 'package:flutter/material.dart';
import 'package:tree/app/app.dart';
import '../model/tree_model.dart';
import '../view_models/home_view_model.dart';
import '/component/card.dart';

Widget scrollListTree(List<TreeModel> data, BuildContext context) {
  return NotificationListener(
    onNotification: onNotificationHandler,
    child: Column(children: [
      Expanded(
        child: displayListTree(data),
      ),
    ]),
  );
}

Widget displayListTree(List<TreeModel> data) {
  return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        final tree = data[index];
        return cardTree(tree, context);
      });
}
