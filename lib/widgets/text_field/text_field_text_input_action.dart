import 'dart:io';

import 'package:flutter/material.dart';

class TextFieldTextInputAction extends StatelessWidget {
  const TextFieldTextInputAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('TextInputAction'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const _TextField(
                textInputAction: TextInputAction.done,
              ),
              const _TextField(
                textInputAction: TextInputAction.continueAction,
              ),
              Visibility(
                visible: Platform.isIOS,
                child: const _TextField(
                  textInputAction: TextInputAction.emergencyCall,
                ),
              ),
              const _TextField(
                textInputAction: TextInputAction.go,
              ),
              Visibility(
                visible: Platform.isIOS,
                child: const _TextField(
                  textInputAction: TextInputAction.join,
                ),
              ),
              const _TextField(
                textInputAction: TextInputAction.newline,
              ),
              const _TextField(
                textInputAction: TextInputAction.next,
              ),
              Visibility(
                visible: Platform.isAndroid,
                child: const _TextField(
                  textInputAction: TextInputAction.none,
                ),
              ),
              Visibility(
                visible: Platform.isAndroid,
                child: const _TextField(
                  textInputAction: TextInputAction.previous,
                ),
              ),
              Visibility(
                visible: Platform.isIOS,
                child: const _TextField(
                  textInputAction: TextInputAction.route,
                ),
              ),
              const _TextField(
                textInputAction: TextInputAction.search,
              ),
              const _TextField(
                textInputAction: TextInputAction.send,
              ),
              const _TextField(
                textInputAction: TextInputAction.unspecified,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField({
    required this.textInputAction,
    Key? key,
  }) : super(key: key);
  final TextInputAction textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: textInputAction,
      cursorColor: Colors.deepPurpleAccent[700],
      decoration: InputDecoration(
        hintText: textInputAction.name,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurpleAccent[700]!),
        ),
      ),
    );
  }
}
