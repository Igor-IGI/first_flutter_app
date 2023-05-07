import 'package:flutter/material.dart';
import 'package:flutter_first_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Below code is same like GradientContainer({key}) : super(key: key);
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
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
