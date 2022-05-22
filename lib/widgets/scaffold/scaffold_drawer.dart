import 'package:flutter/material.dart';

class ScaffoldDrawer extends StatelessWidget {
  const ScaffoldDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent[700]),
      body: Center(
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent[700]),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurpleAccent[700],
      ),
    );
  }
}
