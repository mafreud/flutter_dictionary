import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants/custom_color.dart';

class TableCalendarFormat extends StatefulWidget {
  const TableCalendarFormat({Key? key}) : super(key: key);

  @override
  State<TableCalendarFormat> createState() => _TableCalendarFormatState();
}

class _TableCalendarFormatState extends State<TableCalendarFormat> {
  final DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index < CalendarFormat.values.length - 1) {
            setState(() {
              index++;
            });
          } else {
            setState(() {
              index = 0;
            });
          }
          setState(() {
            _calendarFormat = CalendarFormat.values[index];
          });
        },
        backgroundColor: deepPurpleAccent700,
        child: const Icon(Icons.swap_horiz),
      ),
      appBar: const CustomAppBar(title: 'calendar format'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TableCalendar(
          headerVisible: false,
          firstDay: DateTime.utc(2010, 1, 1),
          lastDay: DateTime.utc(2030, 1, 1),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
        ),
      ),
    );
  }
}
