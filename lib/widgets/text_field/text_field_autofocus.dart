import 'package:flutter/material.dart';

class TextFieldWithAutofocusPage extends StatelessWidget {
  const TextFieldWithAutofocusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with autofocus'),
      ),
      body: const TextField(
        autofocus: true,
      ),
    );
  }
}
