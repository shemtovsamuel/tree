import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tree/component/list_info_tree.dart';

import '../model/tree_model.dart';

Widget InfoTreePage(TreeModel tree) {
  return Scaffold(
    appBar: AppBar(
      title: Text("About Tree 📊"),
      backgroundColor: Colors.green,
    ),
    body: Stack(
      children: <Widget>[
        DisplayMap(tree),
        DisplayTreeInfos(tree),
      ],
    ),
  );
}

Widget DisplayTreeInfos(TreeModel tree) {
  return Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: listInfo(tree),
      ));
}

Widget DisplayMap(TreeModel tree) {
  return Scaffold(
      body: GoogleMap(
    initialCameraPosition: CameraPosition(
      target: LatLng(tree.latitude, tree.longitude),
      zoom: 15,
    ),
    markers: {AddMarker(tree)},
  ));
}

Marker AddMarker(TreeModel tree) {
  return Marker(
    markerId: MarkerId('tree'),
    position: LatLng(tree.latitude, tree.longitude),
    infoWindow: InfoWindow(
      title: tree.name,
      snippet: tree.adress,
    ),
  );
}
