// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_map_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TreeMapController on _TreeMapController, Store {
  late final _$treeListAtom =
      Atom(name: '_TreeMapController.treeList', context: context);

  @override
  List<TreeModel> get treeList {
    _$treeListAtom.reportRead();
    return super.treeList;
  }

  @override
  set treeList(List<TreeModel> value) {
    _$treeListAtom.reportWrite(value, super.treeList, () {
      super.treeList = value;
    });
  }

  late final _$_TreeMapControllerActionController =
      ActionController(name: '_TreeMapController', context: context);

  @override
  void addTree(List<TreeModel> value) {
    final _$actionInfo = _$_TreeMapControllerActionController.startAction(
        name: '_TreeMapController.addTree');
    try {
      return super.addTree(value);
    } finally {
      _$_TreeMapControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<TreeModel> getTreeList() {
    final _$actionInfo = _$_TreeMapControllerActionController.startAction(
        name: '_TreeMapController.getTreeList');
    try {
      return super.getTreeList();
    } finally {
      _$_TreeMapControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  Set<Marker> addMarker(List<TreeModel> value) {
    final _$actionInfo = _$_TreeMapControllerActionController.startAction(
        name: '_TreeMapController.addMarker');
    try {
      return super.addMarker(value);
    } finally {
      _$_TreeMapControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
treeList: ${treeList}
    ''';
  }
}
