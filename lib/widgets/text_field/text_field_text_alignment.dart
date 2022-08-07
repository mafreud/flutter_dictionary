import 'package:flutter/material.dart';

class TextFieldTextAlignment extends StatelessWidget {
  const TextFieldTextAlignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Alignment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _TextField(
                textAlign: TextAlign.start,
              ),
              _TextField(
                textAlign: TextAlign.center,
              ),
              _TextField(
                textAlign: TextAlign.end,
              ),
              _TextField(
                textAlign: TextAlign.justify,
              ),
              _TextField(
                textAlign: TextAlign.left,
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
    required this.textAlign,
    Key? key,
  }) : super(key: key);
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: textAlign,
      cursorColor: Colors.deepPurpleAccent[700],
      decoration: InputDecoration(
        hintText: textAlign.name,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
        ),
      ),
    );
  }
}
