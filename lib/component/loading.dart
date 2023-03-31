import 'package:flutter/material.dart';

import '../app/app.dart';

Widget loading() {
  if (networkController.isDeviceConnected)
    return Align(
        alignment: Alignment.bottomCenter,
        child: Center(child: CircularProgressIndicator(color: Colors.green)));
  else
    return Container();
}
