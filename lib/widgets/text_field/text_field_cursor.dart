import 'package:flutter/material.dart';

class TextFieldCursor extends StatelessWidget {
  const TextFieldCursor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('cursor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                cursorHeight: 30,
                cursorWidth: 10,
                cursorRadius: const Radius.circular(16.0),
                decoration: InputDecoration(
                  hintText: 'customized cursor',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                showCursor: false,
                decoration: InputDecoration(
                  hintText: 'no cursor',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                mouseCursor: SystemMouseCursors.click,
                decoration: InputDecoration(
                  hintText: 'mouse cursor',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
