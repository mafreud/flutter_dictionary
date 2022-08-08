import 'package:flutter/material.dart';

class TextFieldMaxLength extends StatelessWidget {
  const TextFieldMaxLength({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('max length'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                maxLength: 3,
                decoration: InputDecoration(
                  hintText: 'max length',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'Expandable textfield',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Expandable textfield',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Obscure text',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '?',
                decoration: InputDecoration(
                  hintText: 'Obscure text',
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
