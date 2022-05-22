import 'package:flutter/material.dart';
import 'package:flutter_dictionary/go_router/routing.dart';
import 'package:go_router/go_router.dart';

class ScaffoldTopPage extends StatelessWidget {
  const ScaffoldTopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Scaffold Top Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent[700]),
            onPressed: () =>
                context.pushNamed(AppRouter.scaffoldWithAppBar.name),
            child: const Text('AppBar'),
          ),
        ],
      )),
    );
  }
}
