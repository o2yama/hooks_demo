import 'package:flutter/material.dart';
import 'package:tab_controller_demo/tab_view.dart';

class HomeTabPage extends StatelessWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: TabView(),
    );
  }
}
