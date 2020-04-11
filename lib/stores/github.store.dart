import 'package:github/github.dart';
import 'package:mobx/mobx.dart';

part 'github.store.g.dart';

class GithubStore = _GithubStore with _$GithubStore;

abstract class _GithubStore with Store {
  static GitHub createGithubClient() {
    final GitHub gitHub = GitHub();
    return gitHub;
  }
  final GitHub client  = createGithubClient();

  @observable 
  String user = '';


  List<Repository> repositories = [];

  static ObservableFuture<List<Repository>> emptyResponse = ObservableFuture.value([]);

  @observable
  ObservableFuture<List<Repository>> fetchReposFutures = emptyResponse;

  @computed
  bool get hasResults => fetchReposFutures != emptyResponse && fetchReposFutures.status == FutureStatus.fulfilled;


  @action
  Future<List<Repository>> fetchRepos() async {
    repositories = [];
    final future = client.repositories.listUserRepositories(user).toList();
    fetchReposFutures = ObservableFuture(future);
    return repositories = await future;
  }

  @action
  void setUser(String value) {
    fetchReposFutures = emptyResponse;
    user = value;
  }

}