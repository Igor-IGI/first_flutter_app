import 'package:flutter/material.dart';
import 'package:flutter_first_app/dice_roller.dart';

//const means that the variable is "compiled time constant" which means it
//is locked in at the point of time this code is compiled.
//final is a runtime constant, which means its value can be assigned at runtime,
//while const is a compile-time constant, which means its value must be known at
//compile time. Both fianl and const are immutable
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Below code is same like GradientContainer({key}) : super(key: key);
  const GradientContainer({required this.colors, super.key});

  final List<Color> colors;

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
