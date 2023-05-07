import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-5.png';

  void rollDice() {
    setState(() {
      int diceNumber = Random().nextInt(7);

      switch (diceNumber) {
        case 1:
          activeDiceImage = 'assets/images/dice-1.png';
          break;
        case 2:
          activeDiceImage = 'assets/images/dice-2.png';
          break;
        case 3:
          activeDiceImage = 'assets/images/dice-3.png';
          break;
        case 4:
          activeDiceImage = 'assets/images/dice-4.png';
          break;
        case 5:
          activeDiceImage = 'assets/images/dice-5.png';
          break;
        case 6:
          activeDiceImage = 'assets/images/dice-6.png';
          break;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
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
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
            side: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(
              15,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
