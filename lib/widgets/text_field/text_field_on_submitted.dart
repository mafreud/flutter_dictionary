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
              controller: _firstTextEditingController,
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              onSubmitted: (value) {
                showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                      title: const Text('Result value...'),
                      content: Text(value.toString()))),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
