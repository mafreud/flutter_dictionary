import 'package:flutter/material.dart';

class TextFieldWithFocusNodePage extends StatefulWidget {
  const TextFieldWithFocusNodePage({Key? key}) : super(key: key);

  @override
  State<TextFieldWithFocusNodePage> createState() =>
      _TextFieldWithFocusNodePageState();
}

class _TextFieldWithFocusNodePageState
    extends State<TextFieldWithFocusNodePage> {
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with focus node'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              focusNode: nodeOne,
            ),
            TextField(
              focusNode: nodeTwo,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () {
                  FocusScope.of(context).requestFocus(nodeTwo);
                },
                child: const Text("Next Field"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
