import 'package:flutter/material.dart';
import 'package:flutter_dictionary/go_router/routing.dart';
import 'package:go_router/go_router.dart';

class TextFieldTopPage extends StatelessWidget {
  const TextFieldTopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('TEXT FIELD TOP PAGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 25),
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () =>
                    context.pushNamed(TextFieldRouter.textField.name),
                child: const Text('textField'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 25),
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () =>
                    context.pushNamed(TextFieldRouter.autofocus.name),
                child: const Text('autofocus'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 25),
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () =>
                    context.pushNamed(TextFieldRouter.focusNode.name),
                child: const Text('focus node'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
