// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  const GradientContainer(this.colors1, this.colors2, {super.key});

  //named constructor
  const GradientContainer.purple({super.key})
      : colors1 = Colors.deepPurple,
        colors2 = Colors.blue;

  final Color colors1;
  final Color colors2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors1, colors2],
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
