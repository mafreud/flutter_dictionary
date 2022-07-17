import 'package:flutter_dictionary/widgets/scaffold/scaffold_background_color.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_body.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_bottom_navigation_bar.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_drawer.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_autofocus.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_focus_node.dart';
import 'package:go_router/go_router.dart';

import '../top_page.dart';
import '../widgets/scaffold/scaffold_bottom_sheet.dart';
import '../widgets/scaffold/scaffold_top_page.dart';
import '../widgets/scaffold/scaffold_with_app_bar_page.dart';
import '../widgets/text_field/text_field_top.dart';

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
  drawer,
  drawerDragStartBehavior,
}

enum TextFieldRouter { textFieldTop, textField, autofocus, focusNode }

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
        GoRoute(
          path: 'drawerDragStartBehavior',
          name: ScaffoldRouter.drawerDragStartBehavior.name,
          builder: (context, state) => const ScaffoldDrawer(),
        ),
      ],
    ),
    GoRoute(
      path: '/textFieldTop',
      name: TextFieldRouter.textFieldTop.name,
      builder: (context, state) => const TextFieldTopPage(),
      routes: [
        GoRoute(
          path: 'textField',
          name: TextFieldRouter.textField.name,
          builder: (context, state) => const TextFieldPage(),
        ),
        GoRoute(
          path: 'autofocus',
          name: TextFieldRouter.autofocus.name,
          builder: (context, state) => const TextFieldWithAutofocusPage(),
        ),
        GoRoute(
          path: 'focusNode',
          name: TextFieldRouter.focusNode.name,
          builder: (context, state) => const TextFieldWithFocusNodePage(),
        ),
      ],
    ),
  ],
);
