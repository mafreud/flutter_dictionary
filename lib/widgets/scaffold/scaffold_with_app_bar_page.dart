import 'package:flutter/material.dart';

class ScaffoldWithAppBar extends StatelessWidget {
  const ScaffoldWithAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is an appBar'),
      ),
    );
  }
}
