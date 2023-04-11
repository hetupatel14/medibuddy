import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => CalendarScreenState();
}

class CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;
  Map<String, List> mySelectedEvents = {};

  final titleController = TextEditingController();
  final descpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedDate = _focusedDay;
    loadPreviousEvents();
  }

  loadPreviousEvents() {
    mySelectedEvents = {
      "2022-09-13": [
        {"eventDescp": "11", "eventTitle": "111"},
        {"eventDescp": "22", "eventTitle": "22"}
      ],
      "2022-09-30": [
        {"eventDescp": "22", "eventTitle": "22"}
      ],
      "2022-09-20": [
        {"eventTitle": "ss", "eventDescp": "ss"}
      ]
    };
  }

  List _listOfDayEvents(DateTime dateTime) {
    if (mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)] != null) {
      return mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!;
    } else {
      return [];
    }
  }

  _showAddEventDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Add New Event',
          textAlign: TextAlign.center,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: descpController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Color.fromARGB(255, 247, 86, 139)),
            ),
          ),
          TextButton(
            child: const Text('Add Event',
                style: TextStyle(color: Color.fromARGB(255, 247, 86, 139))),
            onPressed: () {
              if (titleController.text.isEmpty &&
                  descpController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Required title and description'),
                    duration: Duration(seconds: 2),
                  ),
                );
                //Navigator.pop(context);
                return;
              } else {
                print(titleController.text);
                print(descpController.text);

                setState(() {
                  if (mySelectedEvents[
                          DateFormat('yyyy-MM-dd').format(_selectedDate!)] !=
                      null) {
                    mySelectedEvents[
                            DateFormat('yyyy-MM-dd').format(_selectedDate!)]
                        ?.add({
                      "eventTitle": titleController.text,
                      "eventDescp": descpController.text,
                    });
                  } else {
                    mySelectedEvents[
                        DateFormat('yyyy-MM-dd').format(_selectedDate!)] = [
                      {
                        "eventTitle": titleController.text,
                        "eventDescp": descpController.text,
                      }
                    ];
                  }
                });

                print(
                    "New Event for backend developer ${json.encode(mySelectedEvents)}");
                titleController.clear();
                descpController.clear();
                Navigator.pop(context);
                return;
              }
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      //   title: const Text('Event Calendar'),
      // ),
      body: Column(
        children: [
          TableCalendar(
            headerStyle: HeaderStyle(titleTextStyle: TextStyle(color: Colors.white), formatButtonTextStyle: TextStyle(color: Colors.white), formatButtonDecoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20), shape: BoxShape.rectangle), formatButtonShowsNext: true),
            // daysOfWeekStyle: ,
            calendarStyle: CalendarStyle(
              markerDecoration: BoxDecoration(color: Colors.pink[200]),
              todayDecoration: BoxDecoration(
                  color: Colors.pink[200], shape: BoxShape.circle),
              selectedDecoration: BoxDecoration(
                  color: Colors.pink[200], shape: BoxShape.circle),
              defaultTextStyle: TextStyle(
                color: Colors.white,
              ),
              holidayTextStyle: TextStyle(color: Colors.white),
              weekendTextStyle: TextStyle(color: Colors.white)
            ),
            firstDay: DateTime(2000),
            lastDay: DateTime.now(),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            // calendarBuilders: CalendarBuilders(
            //   dowBuilder: (context, day) {
            //     if (day.weekday == DateTime.sunday) {
            //       final text = DateFormat.E().format(day);
            //       return Center(
            //         child: Text(
            //           text,
            //           style: TextStyle(color: Colors.red),
            //         ),
            //       );
            //     } else {
            //       final text = DateFormat.E().format(day);
            //       return Center(
            //         child: Text(
            //           text,
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       );
            //     }
            //   },
            // ),
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDate, selectedDay)) {
                // Call `setState()` when updating the selected day
                setState(() {
                  _selectedDate = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDate, day);
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                // Call `setState()` when updating calendar format
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              _focusedDay = focusedDay;
            },
            eventLoader: _listOfDayEvents,
          ),
          ..._listOfDayEvents(_selectedDate!).map(
            (myEvents) => ListTile(
              leading: const Icon(
                Icons.done,
                color: Color.fromARGB(255, 240, 98, 146),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text('Event Title:   ${myEvents['eventTitle']}', style: TextStyle(color: Colors.white),),
              ),
              subtitle: Text('Description:   ${myEvents['eventDescp']}', style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 240, 98, 146),
        onPressed: () => _showAddEventDialog(),
        label: const Text(
          'Add Event',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
