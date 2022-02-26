import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TabView extends HookWidget {
  TabView({Key? key}) : super(key: key);

  final List<Widget> tabList = [
    const Tab(
      child: Text('Tab 1'),
    ),
    const Tab(
      child: Text('Tab 2'),
    ),
    const Tab(
      child: Text('Tab 3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _controller = useTabController(initialLength: tabList.length);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                Scaffold(
                  appBar: AppBar(),
                  body: const Center(
                    child: Text('Tab 1 View'),
                  ),
                ),
                const Center(
                  child: Text('Tab 2 View'),
                ),
                const Center(
                  child: Text('Tab 3 View'),
                ),
              ],
            ),
          ),
          TabBar(
            controller: _controller,
            tabs: tabList,
            labelColor: Theme.of(context).primaryColor,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ],
      ),
    );
  }
}
