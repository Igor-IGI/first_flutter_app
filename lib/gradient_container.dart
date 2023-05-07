import 'package:flutter/material.dart';
import 'package:flutter_first_app/styled_text.dart';

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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
