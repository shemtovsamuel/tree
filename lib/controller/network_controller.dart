import 'package:mobx/mobx.dart';

part 'network_controller.g.dart';
// to generate .g.dart file run this command in terminal : flutter pub run build_runner build

class NetworkController = _NetworkController with _$NetworkController;

abstract class _NetworkController with Store {
  @observable
  bool isAlertSet = false;

  @observable
  bool isDeviceConnected = false;

  @observable
  bool isHttpClientError = false;

  @observable
  bool isHttpServerError = false;

  @action
  void setIsAlertSetTrue() {
    isAlertSet = true;
  }

  @action
  void setIsAlertSetFalse() {
    isAlertSet = false;
  }

  @action
  void setIsDeviceConnectedTrue() {
    isDeviceConnected = true;
  }

  @action
  void setIsDeviceConnectedFalse() {
    isDeviceConnected = false;
  }

  @action
  void setIsDeviceConnected(bool value) {
    isDeviceConnected = value;
  }

  @action
  void setIsHttpClientErrorTrue() {
    isHttpClientError = true;
  }

  @action
  void setIsHttpClientErrorFalse() {
    isHttpClientError = false;
  }

  @action
  void setIsHttpServerErrorTrue() {
    isHttpServerError = true;
  }

  @action
  void setIsHttpServerErrorFalse() {
    isHttpServerError = false;
  }
}
