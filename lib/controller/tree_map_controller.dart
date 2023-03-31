import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
import '../model/tree_model.dart';

part 'tree_map_controller.g.dart';
// to generate .g.dart file run this command in terminal : flutter pub run build_runner build

class TreeMapController = _TreeMapController with _$TreeMapController;

abstract class _TreeMapController with Store {
  @observable
  List<TreeModel> treeList = [];

  @action
  void addTree(List<TreeModel> value) {
    treeList.addAll(value);
    treeList =
        treeList; // il s'agit d'un hack pour que mobx détecte le changement
  }

  @action
  List<TreeModel> getTreeList() {
    return treeList;
  }

  @action
  Set<Marker> addMarker(List<TreeModel> value) {
    return (value
        .map((tree) => Marker(
              markerId: MarkerId(tree.id),
              position: LatLng(tree.latitude, tree.longitude),
              infoWindow: InfoWindow(
                title: tree.name,
                snippet: tree.species,
              ),
            ))
        .toSet());
  }
}
