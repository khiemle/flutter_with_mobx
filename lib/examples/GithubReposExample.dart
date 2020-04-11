import 'package:flutter/material.dart';
import 'package:my_app/stores/github.store.dart';
import 'package:my_app/views/LoadingIndicator.dart';
import 'package:my_app/views/RepositoriesListView.dart';
import 'package:my_app/views/UserInput.dart';
class GithubReposExample extends StatefulWidget {
  @override
  _GithubReposExampleState createState() => _GithubReposExampleState();
}

class _GithubReposExampleState extends State<GithubReposExample> {
  final GithubStore store = GithubStore();
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('GitHub Repos'),
    ),
    body: Padding(padding: EdgeInsets.all(16),
    child: Column(children: <Widget>[
      UserInput(store),
      LoadingIndicator(store),
      RepositoriesListView(store),
    ],),
    ),
  );
}