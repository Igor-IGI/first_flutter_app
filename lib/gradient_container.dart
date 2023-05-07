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
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(0, 229, 255, 1),
            Color.fromRGBO(24, 255, 255, 1),
            Color.fromRGBO(132, 255, 255, 1)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
