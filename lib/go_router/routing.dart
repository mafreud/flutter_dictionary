import 'package:go_router/go_router.dart';

import '../top_page.dart';
import '../widgets/scaffold/scaffold_top_page.dart';
import '../widgets/scaffold/scaffold_with_app_bar_page.dart';

enum AppRouter { root, scaffoldTopPage, scaffoldWithAppBar }

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRouter.root.name,
      builder: (context, state) => const TopPage(),
    ),
    GoRoute(
      path: '/scaffoldTop',
      name: AppRouter.scaffoldTopPage.name,
      builder: (context, state) => const ScaffoldTopPage(),
    ),
    GoRoute(
      path: '/scaffoldWithAppBar',
      name: AppRouter.scaffoldWithAppBar.name,
      builder: (context, state) => const ScaffoldWithAppBar(),
    ),
  ],
);
