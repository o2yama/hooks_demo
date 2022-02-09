import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Example extends HookWidget {
  const Example({Key? key, required this.duration}) : super(key: key);

  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final _alignment = useState(Alignment.topCenter);

    final alignments = [
      Alignment.topCenter,
      Alignment.centerLeft,
      Alignment.centerRight,
      Alignment.bottomCenter,
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Hooks Example')),
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        alignment: _alignment.value,
        child: GestureDetector(
          onTap: () {
            _alignment.value = alignments[Random().nextInt(4)];
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            alignment: _alignment.value,
          ),
        ),
      ),
    );
  }
}
