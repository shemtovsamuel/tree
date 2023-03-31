import 'package:flutter/material.dart';
import '../model/tree_model.dart';
import '../route/tree_map.dart';

Widget cardTree(TreeModel tree, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => InfoTreePage(tree)));
    },
    child: Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Text("🌳", style: TextStyle(fontSize: 30)),
              title: Text(tree.name),
              subtitle: Text("Espece : ${tree.species}"),
            ),
          ],
        ),
      ),
    ),
  );
}
