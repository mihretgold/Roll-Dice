//gives us access to flutters runApp method and fluter Widgets like MaterialApp
import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

const List<Color> colors = [
  Color.fromARGB(255, 77, 49, 155),
  Color.fromARGB(255, 56, 145, 157)
];
//Key instruction in every Flutter apps
void main() {
//tells main which UI to start with first
//const improves runtime performance
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
}

//Matrial App Widget is the root widget that is important to setting the overall app
//Scafold Widget helps with good looking screen
//Center Widget to center things  
//Container Widget - for configuring styling we can't add const on a parevtWidget of container



