import 'package:flutter/material.dart';
import 'package:flutter_first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromRGBO(0, 229, 45, 1),
            Color.fromRGBO(24, 255, 120, 1),
            Color.fromRGBO(132, 255, 180, 1)
          ],
        ),
      ),
    ),
  );
}
