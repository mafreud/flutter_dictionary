import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldBottomNavigationBar extends StatefulWidget {
  const ScaffoldBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<ScaffoldBottomNavigationBar> createState() =>
      _ScaffoldBottomNavigationBarState();
}

class _ScaffoldBottomNavigationBarState
    extends State<ScaffoldBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.deepPurpleAccent[700],
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'One',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Two',
          ),
        ],
      ),
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
    );
  }
}
