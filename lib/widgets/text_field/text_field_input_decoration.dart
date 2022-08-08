import 'package:flutter/material.dart';

class TextFieldInputDecoration extends StatelessWidget {
  const TextFieldInputDecoration({Key? key}) : super(key: key);

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
                decoration: InputDecoration(
                  hintText: 'hint text',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
                  label: const Text('label'),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
                  hintText: 'icon',
                  icon: const Icon(
                    Icons.check,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
                  hintText: 'prefixIcon',
                  prefixIcon: const Icon(Icons.check),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
                  hintText: 'suffixIcon',
                  suffixIcon: const Icon(Icons.check),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
                  prefix: const CircularProgressIndicator.adaptive(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: InputDecoration(
                  helperText: 'helper text',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent[700]!),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: const InputDecoration.collapsed(
                  hintText: "",
                ),
              ),
              TextField(
                  cursorColor: Colors.deepPurpleAccent[700], decoration: null),
              TextField(
                cursorColor: Colors.deepPurpleAccent[700],
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
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
