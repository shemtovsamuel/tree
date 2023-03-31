import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import '../model/tree_model.dart';
import 'list_info_tree.dart';

Widget alertDialogMoreInfo(TreeModel tree, BuildContext context) {
  return TextButton(
    onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => ZoomIn(
              child: AlertDialog(
                title: const Text('Informations sur l\'arbre'),
                content: listInfo(tree),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            )),
    child: const Text("Plus d'infos", style: TextStyle(color: Colors.green)),
  );
}
