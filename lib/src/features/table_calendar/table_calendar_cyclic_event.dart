import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarCyclicEvent extends StatefulWidget {
  const TableCalendarCyclicEvent({Key? key}) : super(key: key);

  @override
  State<TableCalendarCyclicEvent> createState() =>
      _TableCalendarCyclicEventState();
}

class _TableCalendarCyclicEventState extends State<TableCalendarCyclicEvent> {
  DateTime _focusedDay = DateTime.now();
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'cyclic event'),
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
          eventLoader: (day) {
            if (day.weekday == DateTime.monday) {
              return [('cyclic event')];
            }

            return [];
          },
        ),
      ),
    );
  }
}
