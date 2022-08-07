import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldTextStyle extends StatelessWidget {
  const TextFieldTextStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('Text style'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                style: GoogleFonts.inspiration(
                  color: Colors.deepPurpleAccent[700],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
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
