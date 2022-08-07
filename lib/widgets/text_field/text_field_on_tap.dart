import 'package:flutter/material.dart';

class TextFieldWithOnTap extends StatefulWidget {
  const TextFieldWithOnTap({Key? key}) : super(key: key);

  @override
  State<TextFieldWithOnTap> createState() => _TextFieldWithOnTapState();
}

class _TextFieldWithOnTapState extends State<TextFieldWithOnTap> {
  final TextEditingController _firstTextEditingController =
      TextEditingController();
  int _counter = 0;
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
              onTap: () {
                setState(() {
                  _counter++;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Text('tapped: $_counter'),
          ],
        ),
      ),
    );
  }
}
