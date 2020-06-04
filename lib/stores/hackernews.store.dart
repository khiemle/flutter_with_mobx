import 'package:hnpwa_client/hnpwa_client.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';


part 'hackernews.store.g.dart';

enum FeedType { latest, top}

class HackerNewsStore = _HackerNewsStore with _$HackerNewsStore;

abstract class _HackerNewsStore with Store {
  final HnpwaClient _client = HnpwaClient();

  @observable
  ObservableFuture<List<FeedItem>> lastestItemsFuture;

  @observable
  ObservableFuture<List<FeedItem>> topItemsFuture;

  @action
  Future fetchLatest() => lastestItemsFuture = ObservableFuture(_client.newest().then((Feed feed) => feed.items));

  @action
  Future fetchTop() => topItemsFuture = ObservableFuture(_client.news().then((Feed feed) => feed.items));

  void loadNews(FeedType type) {
    if (type == FeedType.latest && lastestItemsFuture == null) {
      fetchLatest();
    }  else if (type == FeedType.top && topItemsFuture == null) {
      fetchTop();
    }
  }

  void openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not open url');
    }
  }
  
}