import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:flutter_dictionary/src/constants/custom_color.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarMultiSelection extends StatefulWidget {
  const TableCalendarMultiSelection({Key? key}) : super(key: key);

  @override
  State<TableCalendarMultiSelection> createState() =>
      _TableCalendarMultiSelectionState();
}

class _TableCalendarMultiSelectionState
    extends State<TableCalendarMultiSelection> {
  DateTime _focusedDay = DateTime.now();
  final Set<DateTime> _selectedDays = <DateTime>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: deepPurpleAccent700,
        onPressed: () {
          setState(() {
            _selectedDays.clear();
          });
        },
        child: const Icon(
          Icons.clear,
        ),
      ),
      appBar: const CustomAppBar(title: 'multi selection'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TableCalendar(
              headerVisible: true,
              firstDay: DateTime.utc(2010, 1, 1),
              lastDay: DateTime.utc(2030, 1, 1),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => _selectedDays.contains(day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _focusedDay = focusedDay;
                  if (_selectedDays.contains(selectedDay)) {
                    _selectedDays.remove(selectedDay);
                  } else {
                    _selectedDays.add(selectedDay);
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
