import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:connectivity/connectivity.dart';
import '../stores/connectivity.store.dart';

class ConnectivityExample extends StatefulWidget {
  const ConnectivityExample(this.store, {Key key}) : super(key: key);
  final ConnectivityStore store;

  @override
  _ConnectivityExampleState createState() => _ConnectivityExampleState();

}

class _ConnectivityExampleState extends State<ConnectivityExample> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ReactionDisposer _disposer;

  @override
  void initState() {
    super.initState();
    _disposer = reaction(
      (_) => widget.store.connectivityStream.value, 
      (result) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text( result == ConnectivityResult.none ? 'You\'re offline' : 'You\'re online'))),
      delay: 4000,
    );
  }

  @override
  void dispose() {
    _disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    key: _scaffoldKey,
    appBar: AppBar(
      title: const Text('Settings'),
    ),
    body: Padding(padding: EdgeInsets.all(16),
    child: Text('Turn your connection on/off for approximate 4 seconds to see the app respond to change in your connection status'),
    ),
  );
}