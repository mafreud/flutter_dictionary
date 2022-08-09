import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarBasics extends StatelessWidget {
  const TableCalendarBasics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Basics'),
      body: TableCalendar(
        firstDay: DateTime.utc(2010, 1, 1),
        lastDay: DateTime.utc(2030, 1, 1),
        focusedDay: DateTime.now(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.deepPurpleAccent[700],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
