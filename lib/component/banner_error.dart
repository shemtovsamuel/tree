import 'package:flutter/material.dart';

Widget bannerError(String message) {
  return Container(
    height: 40,
    color: Colors.red,
    child: Center(
      child: Text(message),
    ),
  );
}
