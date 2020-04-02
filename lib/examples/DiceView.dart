import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/stores/dice.store.dart';

class DiceView extends StatelessWidget {
  final diceStore = DiceStore();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                child: Observer(
                  builder: (_) =>
                      Image.asset('images/dice${diceStore.left}.png'),
                ),
                onPressed: diceStore.roll,
              )),
              Expanded(
                  child: FlatButton(
                child: Observer(
                  builder: (_) =>
                      Image.asset('images/dice${diceStore.right}.png'),
                ),
                onPressed: diceStore.roll,
              ))
            ],
          ),
        ],
      ),
    );
  }
}
