import 'package:flutter/material.dart';

class TextFieldWithOnChanged extends StatefulWidget {
  const TextFieldWithOnChanged({Key? key}) : super(key: key);

  @override
  State<TextFieldWithOnChanged> createState() => _TextFieldWithOnChangedState();
}

class _TextFieldWithOnChangedState extends State<TextFieldWithOnChanged> {
  String _value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with onChanged'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              cursorColor: Colors.deepPurpleAccent[700],
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
          Text(
            'onChanged: $_value',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
