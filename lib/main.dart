import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(132, 255, 255, 1),
                Color.fromRGBO(206, 147, 216, 1),
                Color.fromRGBO(130, 177, 255, 1)
              ],
            ),
          ),
          child: const Center(
            child: Text("Zdravo"),
          ),
        ),
      ),
    ),
  );
}
