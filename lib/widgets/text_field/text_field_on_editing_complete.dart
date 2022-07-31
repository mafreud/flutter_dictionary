import 'package:flutter/material.dart';

class TextFieldWithOnEditingComplete extends StatefulWidget {
  const TextFieldWithOnEditingComplete({Key? key}) : super(key: key);

  @override
  State<TextFieldWithOnEditingComplete> createState() =>
      _TextFieldWithOnEditingCompleteState();
}

class _TextFieldWithOnEditingCompleteState
    extends State<TextFieldWithOnEditingComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with onEditingComplete'),
      ),
      body: const TextField(),
    );
  }
}
