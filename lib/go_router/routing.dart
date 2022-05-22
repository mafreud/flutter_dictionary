import 'package:flutter_dictionary/widgets/scaffold/scaffold_background_color.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_body.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_bottom_navigation_bar.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_drawer.dart';
import 'package:go_router/go_router.dart';

import '../top_page.dart';
import '../widgets/scaffold/scaffold_bottom_sheet.dart';
import '../widgets/scaffold/scaffold_top_page.dart';
import '../widgets/scaffold/scaffold_with_app_bar_page.dart';

enum AppRouter {
  root,
}

enum ScaffoldRouter {
  top,
  appBar,
  backgroundColor,
  body,
  bottomNavigationBar,
  bottomSheet,
  drawer
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRouter.root.name,
      builder: (context, state) => const TopPage(),
    ),
    GoRoute(
      path: '/scaffoldTop',
      name: ScaffoldRouter.top.name,
      builder: (context, state) => const ScaffoldTopPage(),
      routes: [
        GoRoute(
          path: 'appBar',
          name: ScaffoldRouter.appBar.name,
          builder: (context, state) => const ScaffoldWithAppBar(),
        ),
        GoRoute(
          path: 'backgroundColor',
          name: ScaffoldRouter.backgroundColor.name,
          builder: (context, state) => const ScaffoldBackgroundColor(),
        ),
        GoRoute(
          path: 'body',
          name: ScaffoldRouter.body.name,
          builder: (context, state) => const ScaffoldBody(),
        ),
        GoRoute(
          path: 'bottomNavigationBar',
          name: ScaffoldRouter.bottomNavigationBar.name,
          builder: (context, state) => const ScaffoldBottomNavigationBar(),
        ),
        GoRoute(
          path: 'bottomSheet',
          name: ScaffoldRouter.bottomSheet.name,
          builder: (context, state) => const ScaffoldBottomSheet(),
        ),
        GoRoute(
          path: 'drawer',
          name: ScaffoldRouter.drawer.name,
          builder: (context, state) => const ScaffoldDrawer(),
        ),
      ],
    ),
  ],
);
