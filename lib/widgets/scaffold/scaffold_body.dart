import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              height: 100,
              width: 100,
              child: const Center(child: Text('body')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  context.pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.deepPurpleAccent[700],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
