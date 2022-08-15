import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarRangeSelection extends StatefulWidget {
  const TableCalendarRangeSelection({Key? key}) : super(key: key);

  @override
  State<TableCalendarRangeSelection> createState() =>
      _TableCalendarRangeSelectionState();
}

class _TableCalendarRangeSelectionState
    extends State<TableCalendarRangeSelection> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  final RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'range selection'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TableCalendar(
              headerVisible: true,
              firstDay: DateTime.utc(2010, 1, 1),
              lastDay: DateTime.utc(2030, 1, 1),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                  _rangeStart = null;
                  _rangeEnd = null;
                });
              },
              onRangeSelected: (start, end, focusedDay) {
                setState(() {
                  _rangeStart = start;
                  _rangeEnd = end;
                });
              },
              rangeSelectionMode: _rangeSelectionMode,
              rangeStartDay: _rangeStart,
              rangeEndDay: _rangeEnd,
            ),
          ),
        ],
      ),
    );
  }
}
