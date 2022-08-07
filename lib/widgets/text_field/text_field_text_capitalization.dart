import 'package:flutter/material.dart';

class TextFieldTextCapitalization extends StatelessWidget {
  const TextFieldTextCapitalization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Capitalization'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _TextField(
                textCapitalization: TextCapitalization.none,
              ),
              _TextField(
                textCapitalization: TextCapitalization.sentences,
              ),
              _TextField(
                textCapitalization: TextCapitalization.characters,
              ),
              _TextField(
                textCapitalization: TextCapitalization.words,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField({
    required this.textCapitalization,
    Key? key,
  }) : super(key: key);
  final TextCapitalization textCapitalization;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: textCapitalization,
      cursorColor: Colors.deepPurpleAccent[700],
      decoration: InputDecoration(
        hintText: textCapitalization.name,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
        ),
      ),
    );
  }
}
