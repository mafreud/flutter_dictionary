import 'package:flutter/material.dart';

import 'go_router/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Flutter Dictionary',
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent[700]),
    );
  }
}
