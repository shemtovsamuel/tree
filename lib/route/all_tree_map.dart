import 'dart:async';
import 'dart:ui';

import '../model/place.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../app/app.dart';
import '../model/tree_model.dart';

Widget ViewAllTree() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Tree in Paris 🌏"),
      backgroundColor: Colors.green,
    ),
    body: MapSample(),
  );
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class CreatePlace {
  final List<TreeModel> treeList;
  final List<Place> items;

  CreatePlace({required this.treeList})
      : items = treeList
            .map((tree) => Place(
                name: tree.name, latLng: LatLng(tree.latitude, tree.longitude)))
            .toList();
}

class MapSampleState extends State<MapSample> {
  late ClusterManager _manager;

  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> markers = Set();

  final CameraPosition _parisCameraPosition =
      CameraPosition(target: LatLng(48.856613, 2.352222), zoom: 12.0);

  List<Place> items = CreatePlace(treeList: homePageController.treeList).items;

  @override
  void initState() {
    _manager = _initClusterManager();
    super.initState();
  }

  ClusterManager _initClusterManager() {
    return ClusterManager<Place>(items, _updateMarkers,
        markerBuilder: _markerBuilder);
  }

  void _updateMarkers(Set<Marker> markers) {
    setState(() {
      this.markers = markers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _parisCameraPosition,
          markers: markers,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            _manager.setMapId(controller.mapId);
          },
          onCameraMove: _manager.onCameraMove,
          onCameraIdle: _manager.updateMap),
    );
  }

  Future<Marker> Function(Cluster<Place>) get _markerBuilder =>
      (cluster) async {
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          onTap: () {
            cluster.items.forEach((p) => print(p));
          },
          icon: await _getMarkerBitmap(cluster.isMultiple ? 125 : 75,
              text: cluster.isMultiple ? cluster.count.toString() : null),
        );
      };

  Future<BitmapDescriptor> _getMarkerBitmap(int size, {String? text}) async {
    if (kIsWeb) size = (size / 2).floor();

    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = Colors.green;
    final Paint paint2 = Paint()..color = Colors.white;

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size / 3,
            color: Colors.white,
            fontWeight: FontWeight.normal),
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );
    }

    final img = await pictureRecorder.endRecording().toImage(size, size);
    final data = await img.toByteData(format: ImageByteFormat.png) as ByteData;

    return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
  }
}

//DISPLAY WITOOUT CLUSTER

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';

// import '../app/app.dart';
// import '../model/tree_model.dart';

// Widget ViewAllTree() {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text("Tree in Paris 🌏"),
//       backgroundColor: Colors.green,
//     ),
//     body: DisplayMap(),
//   );
// }

// Widget DisplayMap() {
//   List<TreeModel> treeList = homePageController.treeList;
//   Set<Marker> markers = {};
//   for (TreeModel tree in treeList) {
//     markers.add(AddMarker(tree));
//   }

//   return Scaffold(
//       body: GoogleMap(
//     initialCameraPosition: CameraPosition(
//       target: LatLng(48.856614, 2.3522219),
//       zoom: 12,
//     ),
//     markers: markers,
//   ));
// }

// Marker AddMarker(TreeModel tree) {
//   return Marker(
//     markerId: MarkerId('tree'),
//     position: LatLng(tree.latitude, tree.longitude),
//     infoWindow: InfoWindow(
//       title: tree.name,
//       snippet: tree.adress,
//     ),
//   );
// }