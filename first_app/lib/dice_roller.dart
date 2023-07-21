import 'package:flutter/material.dart';
import 'dart:math';

var images = [
  'assets/images/dice-images/dice-1.png',
  'assets/images/dice-images/dice-2.png',
  'assets/images/dice-images/dice-3.png',
  'assets/images/dice-images/dice-4.png',
  'assets/images/dice-images/dice-5.png',
  'assets/images/dice-images/dice-6.png'
];
final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var index = 1;
  void rollDice() {
    setState(() {
      index = random.nextInt(6);
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        images[index],
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          // padding: const EdgeInsets.only(top: 20),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 28,
          ),
        ),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
