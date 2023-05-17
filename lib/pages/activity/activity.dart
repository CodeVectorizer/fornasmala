import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fornasmala/pages/activity/utils.dart';
import 'package:fornasmala/widgets/expanded_container.dart';
import 'package:table_calendar/table_calendar.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  late CalendarFormat _calendarFormat = CalendarFormat.month;
  bool viewEvent = false;

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalender Kegiatan'),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              calendarFormat: _calendarFormat,
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              eventLoader: _getEventsForDay,
              onDaySelected: _onDaySelected,
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              daysOfWeekStyle: const DaysOfWeekStyle(
                  weekendStyle: TextStyle(color: Colors.red)),
              calendarStyle: const CalendarStyle(
                  // Use `CalendarStyle` to customize the UI
                  weekendTextStyle: TextStyle(color: Colors.red)),
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      viewEvent = !viewEvent;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: const BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Informasi Bulan Ini'),
                          Transform.rotate(
                            angle: 180 * pi / (viewEvent ? 180 : 1),
                            child: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                  ),
                ),
                // const SizedBox(
                //   height: 12,
                // ),
                ExpandedSection(
                  expand: viewEvent,
                  child: ValueListenableBuilder<List<Event>>(
                    valueListenable: _selectedEvents,
                    builder: (context, value, _) {
                      print(value);
                      return Column(
                        children: value
                            .map(
                              (e) => Container(
                                margin: const EdgeInsets.all(14),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.black38),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          children: const [
                                            Text('Apr'),
                                            Text(
                                              '22',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  'Lebaran atau Hari Raya Idul Fitri'),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  'Sabtu, 22 Apr / 1 Syawal 1444'),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                color: Colors.black38,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 1,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
