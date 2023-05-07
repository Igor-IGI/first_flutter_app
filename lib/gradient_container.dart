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
  GradientContainer({required this.colors, super.key});

  final List<Color> colors;
  var activeDiceImage = 'assets/images/dice-5.png';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                activeDiceImage = 'assets/images/dice-5.png';
              },
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
