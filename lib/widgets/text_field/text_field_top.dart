import 'package:flutter/material.dart';
import 'package:flutter_dictionary/go_router/routing.dart';
import 'package:flutter_dictionary/utilities/custom_colors.dart';
import 'package:go_router/go_router.dart';

class TextFieldTopPage extends StatelessWidget {
  const TextFieldTopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: deepAccentPurple,
        title: const Text('TEXT FIELD TOP PAGE'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Button(
                type: TextFieldRouter.textField.name,
              ),
              _Button(
                type: TextFieldRouter.autofocus.name,
              ),
              _Button(
                type: TextFieldRouter.focusNode.name,
              ),
              _Button(
                type: TextFieldRouter.textInputType.name,
              ),
              _Button(
                type: TextFieldRouter.onChanged.name,
              ),
              _Button(
                type: TextFieldRouter.onEditingComplete.name,
              ),
              _Button(
                type: TextFieldRouter.onSubmitted.name,
              ),
              _Button(
                type: TextFieldRouter.onTap.name,
              ),
              _Button(
                type: TextFieldRouter.focus.name,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.type,
    Key? key,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(200, 25),
            primary: Colors.deepPurpleAccent[700]),
        onPressed: () => context.pushNamed(type),
        child: Text(type),
      ),
    );
  }
}
