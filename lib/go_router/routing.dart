import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_cyclic_event.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_event_selection.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_format.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_move_focus.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_event.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_multi_selection.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_range_selection.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_background_color.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_body.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_bottom_navigation_bar.dart';
import 'package:flutter_dictionary/widgets/scaffold/scaffold_drawer.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_basics.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_index.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_autofocus.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_cursor.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_focus_node.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_input_decoration.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_max_length.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_on_changed.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_on_editing_complete.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_on_focus.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_on_tap.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_text_alignment.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_text_capitalization.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_text_input_action.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_text_input_type.dart';
import 'package:flutter_dictionary/widgets/text_field/text_field_text_style.dart';
import 'package:go_router/go_router.dart';

import '../top_page.dart';
import '../widgets/scaffold/scaffold_bottom_sheet.dart';
import '../widgets/scaffold/scaffold_top_page.dart';
import '../widgets/scaffold/scaffold_with_app_bar_page.dart';
import '../src/features/table_calendar/table_calendar_router.dart';
import '../widgets/text_field/text_field_on_submitted.dart';
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

enum TextFieldRouter {
  textFieldTop,
  textField,
  autofocus,
  focusNode,
  textInputType,
  onChanged,
  onEditingComplete,
  onSubmitted,
  onTap,
  focus,
  textInputAction,
  textCapitalization,
  textAlign,
  textStyle,
  cursor,
  maxLength,
  inputDecoration,
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
        GoRoute(
          path: 'textInputType',
          name: TextFieldRouter.textInputType.name,
          builder: (context, state) => const TextFieldTextInputType(),
        ),
        GoRoute(
          path: 'onChanged',
          name: TextFieldRouter.onChanged.name,
          builder: (context, state) => const TextFieldWithOnChanged(),
        ),
        GoRoute(
          path: 'onEditingComplete',
          name: TextFieldRouter.onEditingComplete.name,
          builder: (context, state) => const TextFieldWithOnEditingComplete(),
        ),
        GoRoute(
          path: 'onSubmitted',
          name: TextFieldRouter.onSubmitted.name,
          builder: (context, state) => const TextFieldWithOnSubmitted(),
        ),
        GoRoute(
          path: TextFieldRouter.onTap.name,
          name: TextFieldRouter.onTap.name,
          builder: (context, state) => const TextFieldWithOnTap(),
        ),
        GoRoute(
          path: TextFieldRouter.focus.name,
          name: TextFieldRouter.focus.name,
          builder: (context, state) => const TextFieldWithOnFocus(),
        ),
        GoRoute(
          path: TextFieldRouter.textInputAction.name,
          name: TextFieldRouter.textInputAction.name,
          builder: (context, state) => const TextFieldTextInputAction(),
        ),
        GoRoute(
          path: TextFieldRouter.textCapitalization.name,
          name: TextFieldRouter.textCapitalization.name,
          builder: (context, state) => const TextFieldTextCapitalization(),
        ),
        GoRoute(
          path: TextFieldRouter.textAlign.name,
          name: TextFieldRouter.textAlign.name,
          builder: (context, state) => const TextFieldTextAlignment(),
        ),
        GoRoute(
          path: TextFieldRouter.textStyle.name,
          name: TextFieldRouter.textStyle.name,
          builder: (context, state) => const TextFieldTextStyle(),
        ),
        GoRoute(
          path: TextFieldRouter.cursor.name,
          name: TextFieldRouter.cursor.name,
          builder: (context, state) => const TextFieldCursor(),
        ),
        GoRoute(
          path: TextFieldRouter.maxLength.name,
          name: TextFieldRouter.maxLength.name,
          builder: (context, state) => const TextFieldMaxLength(),
        ),
        GoRoute(
          path: TextFieldRouter.inputDecoration.name,
          name: TextFieldRouter.inputDecoration.name,
          builder: (context, state) => const TextFieldInputDecoration(),
        ),
      ],
    ),
    GoRoute(
      path: '/tableCalendarTop',
      name: TableCalendarRouter.tableCalendarTop.name,
      builder: (context, state) => const TableCalenderIndex(),
      routes: [
        GoRoute(
          path: TableCalendarRouter.tableCalendarBasics.name,
          name: TableCalendarRouter.tableCalendarBasics.name,
          builder: (context, state) => const TableCalendarBasics(),
        ),
        GoRoute(
          path: TableCalendarRouter.tableCalendarMoveFocus.name,
          name: TableCalendarRouter.tableCalendarMoveFocus.name,
          builder: (context, state) => const TableCalendarMoveFocus(),
        ),
        GoRoute(
          path: TableCalendarRouter.tableCalendarFormat.name,
          name: TableCalendarRouter.tableCalendarFormat.name,
          builder: (context, state) => const TableCalendarFormat(),
        ),
        GoRoute(
          path: TableCalendarRouter.tableCalendarEvent.name,
          name: TableCalendarRouter.tableCalendarEvent.name,
          builder: (context, state) => const TableCalendarEvent(),
        ),
        GoRoute(
          path: TableCalendarRouter.tableCalendarCyclicEvent.name,
          name: TableCalendarRouter.tableCalendarCyclicEvent.name,
          builder: (context, state) => const TableCalendarCyclicEvent(),
        ),
        GoRoute(
          path: TableCalendarRouter.tableCalendarEventSelection.name,
          name: TableCalendarRouter.tableCalendarEventSelection.name,
          builder: (context, state) => const TableCalendarEventSelection(),
        ),
        GoRoute(
          path: TableCalendarRouter.tableCalendarRangeSelection.name,
          name: TableCalendarRouter.tableCalendarRangeSelection.name,
          builder: (context, state) => const TableCalendarRangeSelection(),
        ),
        GoRoute(
          path: TableCalendarRouter.tableCalendarMultiSelection.name,
          name: TableCalendarRouter.tableCalendarMultiSelection.name,
          builder: (context, state) => const TableCalendarMultiSelection(),
        ),
      ],
    )
  ],
);
