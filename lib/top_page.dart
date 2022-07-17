import 'package:flutter/material.dart';
import 'package:flutter_dictionary/go_router/routing.dart';
import 'package:go_router/go_router.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Top Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 25),
                  primary: Colors.deepPurpleAccent[700]),
              onPressed: () => context.pushNamed(ScaffoldRouter.top.name),
              child: const Text('Scaffold'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 25),
                  primary: Colors.deepPurpleAccent[700]),
              onPressed: () =>
                  context.pushNamed(TextFieldRouter.textFieldTop.name),
              child: const Text('TextField'),
            ),
          ),
        ]),
      ),
    );
  }
}
