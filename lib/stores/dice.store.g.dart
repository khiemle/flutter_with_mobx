// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DiceStore on _DiceStore, Store {
  Computed<int> _$totalComputed;

  @override
  int get total => (_$totalComputed ??= Computed<int>(() => super.total)).value;

  final _$leftAtom = Atom(name: '_DiceStore.left');

  @override
  int get left {
    _$leftAtom.context.enforceReadPolicy(_$leftAtom);
    _$leftAtom.reportObserved();
    return super.left;
  }

  @override
  set left(int value) {
    _$leftAtom.context.conditionallyRunInAction(() {
      super.left = value;
      _$leftAtom.reportChanged();
    }, _$leftAtom, name: '${_$leftAtom.name}_set');
  }

  final _$rightAtom = Atom(name: '_DiceStore.right');

  @override
  int get right {
    _$rightAtom.context.enforceReadPolicy(_$rightAtom);
    _$rightAtom.reportObserved();
    return super.right;
  }

  @override
  set right(int value) {
    _$rightAtom.context.conditionallyRunInAction(() {
      super.right = value;
      _$rightAtom.reportChanged();
    }, _$rightAtom, name: '${_$rightAtom.name}_set');
  }

  final _$_DiceStoreActionController = ActionController(name: '_DiceStore');

  @override
  void roll() {
    final _$actionInfo = _$_DiceStoreActionController.startAction();
    try {
      return super.roll();
    } finally {
      _$_DiceStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'left: ${left.toString()},right: ${right.toString()},total: ${total.toString()}';
    return '{$string}';
  }
}
