// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NetworkController on _NetworkController, Store {
  late final _$isAlertSetAtom =
      Atom(name: '_NetworkController.isAlertSet', context: context);

  @override
  bool get isAlertSet {
    _$isAlertSetAtom.reportRead();
    return super.isAlertSet;
  }

  @override
  set isAlertSet(bool value) {
    _$isAlertSetAtom.reportWrite(value, super.isAlertSet, () {
      super.isAlertSet = value;
    });
  }

  late final _$isDeviceConnectedAtom =
      Atom(name: '_NetworkController.isDeviceConnected', context: context);

  @override
  bool get isDeviceConnected {
    _$isDeviceConnectedAtom.reportRead();
    return super.isDeviceConnected;
  }

  @override
  set isDeviceConnected(bool value) {
    _$isDeviceConnectedAtom.reportWrite(value, super.isDeviceConnected, () {
      super.isDeviceConnected = value;
    });
  }

  late final _$_NetworkControllerActionController =
      ActionController(name: '_NetworkController', context: context);

  @override
  void setIsAlertSetTrue() {
    final _$actionInfo = _$_NetworkControllerActionController.startAction(
        name: '_NetworkController.setIsAlertSetTrue');
    try {
      return super.setIsAlertSetTrue();
    } finally {
      _$_NetworkControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsAlertSetFalse() {
    final _$actionInfo = _$_NetworkControllerActionController.startAction(
        name: '_NetworkController.setIsAlertSetFalse');
    try {
      return super.setIsAlertSetFalse();
    } finally {
      _$_NetworkControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsDeviceConnectedTrue() {
    final _$actionInfo = _$_NetworkControllerActionController.startAction(
        name: '_NetworkController.setIsDeviceConnectedTrue');
    try {
      return super.setIsDeviceConnectedTrue();
    } finally {
      _$_NetworkControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsDeviceConnectedFalse() {
    final _$actionInfo = _$_NetworkControllerActionController.startAction(
        name: '_NetworkController.setIsDeviceConnectedFalse');
    try {
      return super.setIsDeviceConnectedFalse();
    } finally {
      _$_NetworkControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsDeviceConnected(bool value) {
    final _$actionInfo = _$_NetworkControllerActionController.startAction(
        name: '_NetworkController.setIsDeviceConnected');
    try {
      return super.setIsDeviceConnected(value);
    } finally {
      _$_NetworkControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isAlertSet: ${isAlertSet},
isDeviceConnected: ${isDeviceConnected}
    ''';
  }
}
