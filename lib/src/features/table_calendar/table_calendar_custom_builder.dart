import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/common_widgets/custom_app_bar.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarCustomBuilder extends StatefulWidget {
  const TableCalendarCustomBuilder({Key? key}) : super(key: key);

  @override
  State<TableCalendarCustomBuilder> createState() =>
      _TableCalendarCustomBuilderState();
}

class _TableCalendarCustomBuilderState
    extends State<TableCalendarCustomBuilder> {
  final DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'custom builder'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 1, 1),
              lastDay: DateTime.utc(2030, 1, 1),
              focusedDay: _focusedDay,
              calendarBuilders: CalendarBuilders(
                dowBuilder: (_, day) {
                  if (day.weekday == DateTime.sunday) {
                    final text = DateFormat.E().format(day);

                    return Center(
                      child: Text(
                        text,
                        style: const TextStyle(color: Colors.red),
                      ),
                    );
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
