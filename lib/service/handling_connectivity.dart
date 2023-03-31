import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../app/app.dart';
import '../component/banner_error.dart';

late StreamSubscription subscription;

Widget DisplayHandlingError() {
  return SafeArea(
      child: Stack(
    children: [
      if (!networkController.isDeviceConnected)
        bannerError("No Connection internet"),
      if (networkController.isHttpClientError) bannerError("HTTP client error"),
      if (networkController.isHttpServerError) bannerError("HTTP server error"),
    ],
  ));
}

getConnectivity(BuildContext context) => subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      InternetConnectionChecker().onStatusChange.listen((status) {
        if (status == InternetConnectionStatus.connected) {
          networkController.setIsDeviceConnected(true);
          homePageController.setLoadingFalse();
        } else {
          networkController.setIsDeviceConnected(false);
        }
      });
    });

cancelStreamSubscription() => subscription.cancel();
