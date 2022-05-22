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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () => context.pushNamed(ScaffoldRouter.appBar.name),
                child: const Text('appBar'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () =>
                    context.pushNamed(ScaffoldRouter.backgroundColor.name),
                child: const Text('backgroundColor'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () => context.pushNamed(ScaffoldRouter.body.name),
                child: const Text('body'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () =>
                    context.pushNamed(ScaffoldRouter.bottomNavigationBar.name),
                child: Text(ScaffoldRouter.bottomNavigationBar.name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
