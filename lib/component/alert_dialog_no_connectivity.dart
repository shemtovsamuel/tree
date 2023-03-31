import 'package:flutter/material.dart';
import '../app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

showDialogBox(BuildContext context) => showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('No Connection'),
        content: const Text('Please check your internet connectivity'),
        actions: <Widget>[
          TextButton(
            onPressed: () async {
              Navigator.pop(context, 'Cancel');
              networkController.setIsAlertSetFalse();
              networkController.setIsDeviceConnected(
                  await InternetConnectionChecker().hasConnection);
              if (!networkController.isDeviceConnected &&
                  networkController.isAlertSet == false) {
                showDialogBox(context);
                networkController.setIsAlertSetTrue();
              }
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
