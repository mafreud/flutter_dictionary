import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../common_widgets/custom_app_bar.dart';
import '../../constants/custom_color.dart';

class TableCalendarBasics extends StatefulWidget {
  const TableCalendarBasics({Key? key}) : super(key: key);

  @override
  State<TableCalendarBasics> createState() => _TableCalendarBasicsState();
}

class _TableCalendarBasicsState extends State<TableCalendarBasics> {
  List<String> languageList = [
    'af_ZA',
    'en_US',
    'he_IL',
    'ja_JP',
    'th_TH',
    'zh_CH'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (index == languageList.length - 1) {
              index = 0;
            } else {
              index++;
            }
          });
        },
        backgroundColor: deepPurpleAccent700,
        child: const Icon(Icons.swap_horiz),
      ),
      appBar: CustomAppBar(title: 'Basic, Locale: ${languageList[index]}'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TableCalendar(
          locale: languageList[index],
          firstDay: DateTime.utc(2010, 1, 1),
          lastDay: DateTime.utc(2030, 1, 1),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}
