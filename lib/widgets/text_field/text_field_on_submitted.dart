import 'package:flutter/material.dart';

class TextFieldWithOnSubmitted extends StatefulWidget {
  const TextFieldWithOnSubmitted({Key? key}) : super(key: key);

  @override
  State<TextFieldWithOnSubmitted> createState() =>
      _TextFieldWithOnSubmittedState();
}

class _TextFieldWithOnSubmittedState extends State<TextFieldWithOnSubmitted> {
  final TextEditingController _firstTextEditingController =
      TextEditingController();
  final TextEditingController _secondTextEditingController =
      TextEditingController();
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with onSubmitted'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              focusNode: nodeOne,
              controller: _firstTextEditingController,
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              onSubmitted: (value) {
                FocusScope.of(context).requestFocus(nodeTwo);
              },
            ),
            TextField(
              focusNode: nodeTwo,
              controller: _secondTextEditingController,
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              onSubmitted: (value) {
                //
              },
            ),
          ],
        ),
      ),
    );
  }
}
