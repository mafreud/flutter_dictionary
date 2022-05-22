import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldBottomSheet extends StatelessWidget {
  const ScaffoldBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent[700]),
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      bottomSheet: Container(
        color: Colors.deepPurpleAccent[700],
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: Text(
            'Bottom Sheet',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
