import 'package:flutter/material.dart';
import 'package:my_app/stores/hackernews.store.dart';
import 'package:my_app/views/FeedItemView.dart';

class HackerNewsExample extends StatefulWidget {
  const HackerNewsExample();

  @override
  _HackerNewsExampleState createState() => _HackerNewsExampleState();
}

class _HackerNewsExampleState extends State<HackerNewsExample>
    with SingleTickerProviderStateMixin {
  final HackerNewsStore store = HackerNewsStore();

  TabController _tabController;
  final _tabs = [FeedType.latest, FeedType.top];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(_onTabChange);
    store.loadNews(_tabs.first);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hacker News'),
          bottom: TabBar(
            tabs: const [Tab(text: 'Newest'), Tab(text: 'Top')],
            controller: _tabController,
          ),
        ),
        body: SafeArea(
            child: TabBarView(controller: _tabController, children: [FeedItemView(store, FeedType.latest), FeedItemView(store, FeedType.top)])));
  }

  void _onTabChange() {
    store.loadNews(_tabs[_tabController.index]);
  }
}
