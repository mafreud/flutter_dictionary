import 'package:flutter/material.dart';

class TextFieldWithFocusNodePage extends StatefulWidget {
  const TextFieldWithFocusNodePage({Key? key}) : super(key: key);

  @override
  State<TextFieldWithFocusNodePage> createState() =>
      _TextFieldWithFocusNodePageState();
}

class _TextFieldWithFocusNodePageState
    extends State<TextFieldWithFocusNodePage> {
  late FocusNode focusOne;
  late FocusNode focusTwo;

  @override
  void initState() {
    focusOne = FocusNode();
    focusTwo = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focusOne.dispose();
    focusTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text Field with focus node'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                focusNode: focusOne,
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
                onSubmitted: (_) {
                  FocusScope.of(context).requestFocus(focusTwo);
                },
              ),
              TextField(
                focusNode: focusTwo,
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
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
