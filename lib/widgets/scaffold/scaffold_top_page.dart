import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldTopPage extends StatelessWidget {
  const ScaffoldTopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Top Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => context.push('/scaffoldWithAppBar'),
            child: const Text('AppBar'),
          )
        ],
      )),
    );
  }
}
