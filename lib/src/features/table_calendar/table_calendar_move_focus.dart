import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarMoveFocus extends StatefulWidget {
  const TableCalendarMoveFocus({Key? key}) : super(key: key);

  @override
  State<TableCalendarMoveFocus> createState() => _TableCalendarMoveFocusState();
}

class _TableCalendarMoveFocusState extends State<TableCalendarMoveFocus> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'move focus'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 1, 1),
          lastDay: DateTime.utc(2030, 1, 1),
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) {
            // Use `selectedDayPredicate` to determine which day is currently selected.
            // If this returns true, then `day` will be marked as selected.

            // Using `isSameDay` is recommended to disregard
            // the time-part of compared DateTime objects.
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              // Call `setState()` when updating the selected day
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          },
        ),
      ),
    );
  }
}
