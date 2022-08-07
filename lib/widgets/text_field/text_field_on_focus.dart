import 'package:flutter/material.dart';

class TextFieldWithOnFocus extends StatefulWidget {
  const TextFieldWithOnFocus({Key? key}) : super(key: key);

  @override
  State<TextFieldWithOnFocus> createState() => _TextFieldWithOnFocusState();
}

class _TextFieldWithOnFocusState extends State<TextFieldWithOnFocus> {
  final focusNode = FocusNode();

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              textInputAction: TextInputAction.done,
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                hintText: 'unfocus',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              controller: controller,
            ),
            TextField(
              textInputAction: TextInputAction.done,
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                hintText: 'focus',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
