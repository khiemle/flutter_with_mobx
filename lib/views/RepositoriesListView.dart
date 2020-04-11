import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/stores/github.store.dart';

class RepositoriesListView extends StatelessWidget {
  const RepositoriesListView(this.store);

  final GithubStore store;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Observer(
          builder: (_) {
            if (!store.hasResults) {
              return Container();
            }
            if (store.repositories.isEmpty) {
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("We could not find any repos for user"),
                  Text(
                    store.user,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              );
            }
            return ListView.builder(
              itemCount: store.repositories.length,
              itemBuilder: (_, int index) {
                final repo = store.repositories[index];
                return ListTile(
                  title: Row(
                    children: <Widget>[
                      Text(repo.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        '(${repo.stargazersCount ?? ''} ⭐️)',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  subtitle: Text(repo.description ?? ''),
                );
              },
            );
          },
        ),
      );
}
