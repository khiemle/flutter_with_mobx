// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectivity.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConnectivityStore on _ConnectivityStore, Store {
  final _$connectivityStreamAtom =
      Atom(name: '_ConnectivityStore.connectivityStream');

  @override
  ObservableStream<ConnectivityResult> get connectivityStream {
    _$connectivityStreamAtom.context
        .enforceReadPolicy(_$connectivityStreamAtom);
    _$connectivityStreamAtom.reportObserved();
    return super.connectivityStream;
  }

  @override
  set connectivityStream(ObservableStream<ConnectivityResult> value) {
    _$connectivityStreamAtom.context.conditionallyRunInAction(() {
      super.connectivityStream = value;
      _$connectivityStreamAtom.reportChanged();
    }, _$connectivityStreamAtom, name: '${_$connectivityStreamAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'connectivityStream: ${connectivityStream.toString()}';
    return '{$string}';
  }
}
