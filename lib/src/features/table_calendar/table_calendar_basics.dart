import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../common_widgets/custom_app_bar.dart';

class TableCalendarBasics extends StatelessWidget {
  const TableCalendarBasics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Basics'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 1, 1),
          lastDay: DateTime.utc(2030, 1, 1),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}
