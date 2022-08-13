import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarFormat extends StatefulWidget {
  const TableCalendarFormat({Key? key}) : super(key: key);

  @override
  State<TableCalendarFormat> createState() => _TableCalendarFormatState();
}

class _TableCalendarFormatState extends State<TableCalendarFormat> {
  final DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'calendar format'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 1, 1),
          lastDay: DateTime.utc(2030, 1, 1),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
        ),
      ),
    );
  }
}
