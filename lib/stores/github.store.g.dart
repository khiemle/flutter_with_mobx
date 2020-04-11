// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GithubStore on _GithubStore, Store {
  Computed<bool> _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults)).value;

  final _$userAtom = Atom(name: '_GithubStore.user');

  @override
  String get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$fetchReposFuturesAtom = Atom(name: '_GithubStore.fetchReposFutures');

  @override
  ObservableFuture<List<Repository>> get fetchReposFutures {
    _$fetchReposFuturesAtom.context.enforceReadPolicy(_$fetchReposFuturesAtom);
    _$fetchReposFuturesAtom.reportObserved();
    return super.fetchReposFutures;
  }

  @override
  set fetchReposFutures(ObservableFuture<List<Repository>> value) {
    _$fetchReposFuturesAtom.context.conditionallyRunInAction(() {
      super.fetchReposFutures = value;
      _$fetchReposFuturesAtom.reportChanged();
    }, _$fetchReposFuturesAtom, name: '${_$fetchReposFuturesAtom.name}_set');
  }

  final _$fetchReposAsyncAction = AsyncAction('fetchRepos');

  @override
  Future<List<Repository>> fetchRepos() {
    return _$fetchReposAsyncAction.run(() => super.fetchRepos());
  }

  final _$_GithubStoreActionController = ActionController(name: '_GithubStore');

  @override
  void setUser(String value) {
    final _$actionInfo = _$_GithubStoreActionController.startAction();
    try {
      return super.setUser(value);
    } finally {
      _$_GithubStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'user: ${user.toString()},fetchReposFutures: ${fetchReposFutures.toString()},hasResults: ${hasResults.toString()}';
    return '{$string}';
  }
}
