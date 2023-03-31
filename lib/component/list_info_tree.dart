import 'package:flutter/material.dart';
import '../model/tree_model.dart';

Widget listInfo(TreeModel tree) {
  return Column(
    children: [
      Text(
        "Nom : ${tree.name}",
        style: TextStyle(
            backgroundColor: Colors.green, fontSize: 20, color: Colors.white),
      ),
      Text(
        "Espece : ${tree.species}",
        style: TextStyle(
            backgroundColor: Colors.green, fontSize: 20, color: Colors.white),
      ),
      Text(
        "Circonférence : ${tree.circumference} cm",
        style: TextStyle(
            backgroundColor: Colors.green, fontSize: 20, color: Colors.white),
      ),
      Text(
        "Hauteur : ${tree.height} m",
        style: TextStyle(
            backgroundColor: Colors.green, fontSize: 20, color: Colors.white),
      ),
      Text(
        "Adresse : ${tree.adress}",
        style: TextStyle(
            backgroundColor: Colors.green, fontSize: 20, color: Colors.white),
      ),
    ],
  );
}
