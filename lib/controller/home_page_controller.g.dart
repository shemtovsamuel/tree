// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageController on _HomePageController, Store {
  late final _$rowsAtom =
      Atom(name: '_HomePageController.rows', context: context);

  @override
  int get rows {
    _$rowsAtom.reportRead();
    return super.rows;
  }

  @override
  set rows(int value) {
    _$rowsAtom.reportWrite(value, super.rows, () {
      super.rows = value;
    });
  }

  late final _$startAtom =
      Atom(name: '_HomePageController.start', context: context);

  @override
  int get start {
    _$startAtom.reportRead();
    return super.start;
  }

  @override
  set start(int value) {
    _$startAtom.reportWrite(value, super.start, () {
      super.start = value;
    });
  }

  late final _$treeListAtom =
      Atom(name: '_HomePageController.treeList', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_HomePageController.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$_HomePageControllerActionController =
      ActionController(name: '_HomePageController', context: context);

  @override
  void incrementStart() {
    final _$actionInfo = _$_HomePageControllerActionController.startAction(
        name: '_HomePageController.incrementStart');
    try {
      return super.incrementStart();
    } finally {
      _$_HomePageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTree(List<TreeModel> value) {
    final _$actionInfo = _$_HomePageControllerActionController.startAction(
        name: '_HomePageController.addTree');
    try {
      return super.addTree(value);
    } finally {
      _$_HomePageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoadingTrue() {
    final _$actionInfo = _$_HomePageControllerActionController.startAction(
        name: '_HomePageController.setLoadingTrue');
    try {
      return super.setLoadingTrue();
    } finally {
      _$_HomePageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoadingFalse() {
    final _$actionInfo = _$_HomePageControllerActionController.startAction(
        name: '_HomePageController.setLoadingFalse');
    try {
      return super.setLoadingFalse();
    } finally {
      _$_HomePageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<TreeModel> getTreeList() {
    final _$actionInfo = _$_HomePageControllerActionController.startAction(
        name: '_HomePageController.getTreeList');
    try {
      return super.getTreeList();
    } finally {
      _$_HomePageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
rows: ${rows},
start: ${start},
treeList: ${treeList},
isLoading: ${isLoading}
    ''';
  }
}
