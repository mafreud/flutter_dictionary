import 'package:flutter/material.dart';

class TextFieldTextInputType extends StatelessWidget {
  const TextFieldTextInputType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('TEXT FIELD TEXT INPUT TYPE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextField(
                keyboardType: TextInputType.none,
                decoration: InputDecoration(hintText: 'none'),
              ),
              const TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(hintText: 'datetime'),
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'email address'),
              ),
              const TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(hintText: 'multiline'),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(hintText: 'name'),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'number'),
              ),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'phone'),
              ),
              const TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(hintText: 'street address'),
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'text'),
              ),
              const TextField(
                keyboardType: TextInputType.url,
                decoration: InputDecoration(hintText: 'url'),
              ),
              const TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(hintText: 'visible password'),
              ),
              // これは何のためにあるの?
              TextField(
                keyboardType: TextInputType.values[0],
                decoration: const InputDecoration(hintText: 'values'),
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  hintText: 'number with decimal point',
                ),
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                ),
                decoration: InputDecoration(
                  hintText: 'number with signs',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
