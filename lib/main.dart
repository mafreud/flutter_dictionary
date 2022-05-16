import 'package:flutter/material.dart';
import 'package:flutter_dictionary/top_page.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_top_page.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_with_app_bar_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const TopPage(),
      ),
      GoRoute(
        path: '/scaffoldTop',
        builder: (context, state) => const ScaffoldTopPage(),
      ),
      GoRoute(
        path: '/scaffoldWithAppBar',
        builder: (context, state) => const ScaffoldWithAppBar(),
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Flutter Dictionary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
