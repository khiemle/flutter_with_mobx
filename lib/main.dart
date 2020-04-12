import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/examples/FormExample.dart';
import 'package:my_app/examples/GithubReposExample.dart';
import 'package:my_app/examples/GoogleMapExample.dart';
import 'package:my_app/examples/RollDiceExample.dart';
import 'package:my_app/stores/connectivity.store.dart';
import 'package:my_app/examples/ConectivityExample.dart';
import 'package:my_app/stores/counter.store.dart';

void main() => runApp(MyApp());

final connectivityStore = ConnectivityStore();
final counterStore = Counter();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter with MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
                builder: (_) => Text(
                      '${counterStore.value}',
                      style: Theme.of(context).textTheme.display1,
                    )),
            FlatButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ConnectivityExample(connectivityStore)),
                )
              },
              child: Text("Connectivity Example"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RollDiceExample()))
              },
              child: Text("Roll Dice"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormExample()))
              },
              child: Text("Login Form"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GithubReposExample()))
              },
              child: Text("GitHub Repos"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GoogleMapExample()))
              },
              child: Text("Google Map"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterStore.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
