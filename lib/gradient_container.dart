import 'package:flutter/material.dart';
import 'package:flutter_first_app/styled_text.dart';

//const means that the variable is "compiled time constant" which means it
//is locked in at the point of time this code is compiled.
//final is a runtime constant, which means its value can be assigned at runtime,
//while const is a compile-time constant, which means its value must be known at
//compile time. Both fianl and const are immutable
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Below code is same like GradientContainer({key}) : super(key: key);
  const GradientContainer(
      {required this.colors,
      required this.name,
      required this.imageWidth,
      super.key});

  final List<Color> colors;
  final String name;
  final double imageWidth;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
          name,
          width: imageWidth,
        ),
      ),
    );
  }
}
