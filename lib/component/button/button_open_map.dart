import 'package:flutter/material.dart';

import '../../route/all_tree_map.dart';

Widget ButtonOpenMap(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
          child: Icon(Icons.map),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ViewAllTree()));
          }),
    ),
  );
}
