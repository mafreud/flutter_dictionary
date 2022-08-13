import 'package:flutter/material.dart';
import 'package:flutter_dictionary/src/features/table_calendar/table_calendar_router.dart';
import 'package:go_router/go_router.dart';

class TableCalenderIndex extends StatelessWidget {
  const TableCalenderIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: const Text('TABLE CALENDER'),
      ),
      body: Center(
        child: Column(children: [
          _Button(
            type: TableCalendarRouter.tableCalendarBasics.name,
          ),
          _Button(
            type: TableCalendarRouter.tableCalendarMoveFocus.name,
          ),
          _Button(
            type: TableCalendarRouter.tableCalendarFormat.name,
          ),
        ]),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.type,
    Key? key,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(200, 25),
            primary: Colors.deepPurpleAccent[700]),
        onPressed: () => context.pushNamed(type),
        child: Text(type),
      ),
    );
  }
}
