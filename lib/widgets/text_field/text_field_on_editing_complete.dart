import 'package:flutter/material.dart';

class TextFieldWithOnEditingComplete extends StatefulWidget {
  const TextFieldWithOnEditingComplete({Key? key}) : super(key: key);

  @override
  State<TextFieldWithOnEditingComplete> createState() =>
      _TextFieldWithOnEditingCompleteState();
}

class _TextFieldWithOnEditingCompleteState
    extends State<TextFieldWithOnEditingComplete> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _complete = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with onEditingComplete'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              controller: _textEditingController,
              onEditingComplete: () {
                setState(() {
                  _complete = true;
                });
              },
            ),
          ),
          Text('onEditingComplete: $_complete')
        ],
      ),
    );
  }
}
