import 'package:flutter/material.dart';
import 'package:my_app/examples/DiceView.dart';

class RollDiceExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
     backgroundColor: Colors.amber,
    appBar: AppBar(
      title: const Text('Roll Dice'),
    ),
    body: Padding(padding: EdgeInsets.all(16),
    child: DiceView(),
    ),
  );
}