import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:go_router/go_router.dart';

class ScaffoldBackgroundColor extends StatefulWidget {
  const ScaffoldBackgroundColor({Key? key}) : super(key: key);

  @override
  State<ScaffoldBackgroundColor> createState() =>
      _ScaffoldBackgroundColorState();
}

class _ScaffoldBackgroundColorState extends State<ScaffoldBackgroundColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // generate color randomly
      backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () {
                  setState(() {});
                },
                child: const Text('change background color'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent[700]),
                onPressed: () {
                  context.pop();
                },
                child: const Text('back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
