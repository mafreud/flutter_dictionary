import 'package:flutter/material.dart';

class TextFieldWithOnEditingComplete extends StatefulWidget {
  const TextFieldWithOnEditingComplete({Key? key}) : super(key: key);

  @override
  State<TextFieldWithOnEditingComplete> createState() =>
      _TextFieldWithOnEditingCompleteState();
}

class _TextFieldWithOnEditingCompleteState
    extends State<TextFieldWithOnEditingComplete> {
  final firstFocusNode = FocusNode();
  final secondFocusNode = FocusNode();

  final TextEditingController _firstTextEditingController =
      TextEditingController();
  final TextEditingController _secondTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with onEditingComplete'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              focusNode: firstFocusNode,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                hintText: 'done',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              controller: _firstTextEditingController,
              onEditingComplete: () {
                firstFocusNode.unfocus();
              },
            ),
            TextField(
              focusNode: secondFocusNode,
              textInputAction: TextInputAction.continueAction,
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                hintText: 'continue',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              controller: _secondTextEditingController,
              onEditingComplete: () {
                secondFocusNode.unfocus();
              },
            ),
          ],
        ),
      ),
    );
  }
}
