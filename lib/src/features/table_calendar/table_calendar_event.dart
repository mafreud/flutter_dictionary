import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarUpdateFocus extends StatefulWidget {
  const TableCalendarUpdateFocus({Key? key}) : super(key: key);

  @override
  State<TableCalendarUpdateFocus> createState() =>
      _TableCalendarUpdateFocusState();
}

class _TableCalendarUpdateFocusState extends State<TableCalendarUpdateFocus> {
  DateTime _focusedDay = DateTime.now();
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'event'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TableCalendar(
          headerVisible: true,
          firstDay: DateTime.utc(2010, 1, 1),
          lastDay: DateTime.utc(2030, 1, 1),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          eventLoader: (date) {
            final sampleMap = {
              DateTime.utc(2022, 8, 3): ['hey', 'hay'],
              DateTime.utc(2022, 8, 5): ['hey', 'hay']
            };

            return sampleMap[date] ?? [];
          },
        ),
      ),
    );
  }
}
