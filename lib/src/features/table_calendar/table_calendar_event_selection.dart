import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_event.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarEventSelection extends StatefulWidget {
  const TableCalendarEventSelection({Key? key}) : super(key: key);

  @override
  State<TableCalendarEventSelection> createState() =>
      _TableCalendarEventSelectionState();
}

class _TableCalendarEventSelectionState
    extends State<TableCalendarEventSelection> {
  DateTime _focusedDay = DateTime.now();
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;

  final List<String> _selectedEvents = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'event selection'),
      body: Column(
        children: [
          Padding(
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
                return sampleMap[date] ?? [];
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _selectedEvents.length,
              itemBuilder: (context, index) {
                return const Text('test');
              },
            ),
          ),
        ],
      ),
    );
  }
}
