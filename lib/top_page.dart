import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () => context.go('/scaffoldTop'),
            child: const Text('Scaffold'),
          )
        ]),
      ),
    );
  }
}
