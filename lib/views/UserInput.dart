import 'package:flutter/material.dart';
import 'package:my_app/stores/github.store.dart';

class UserInput extends StatelessWidget {
  const UserInput(this.store);
  final GithubStore store;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextField(
              autocorrect: false,
              autofocus: true,
              onSubmitted: (String user) {
                store.setUser(user);

                // ignore: cascade_invocations
                store.fetchRepos();
              },
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: store.fetchRepos,
        )
      ],
    );
  }
}
