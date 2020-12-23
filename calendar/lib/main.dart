import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: calendarUI(),
    );
  }
}
class calendarUI extends StatefulWidget {
  @override
  _calendarUIState createState() => _calendarUIState();
}

class _calendarUIState extends State<calendarUI> {
  CalendarController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text("Calendar UI"),
        centerTitle: true,
        elevation: 30.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TableCalendar(
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(18.0),
                ),
                formatButtonTextStyle: TextStyle(
                  color: Colors.white,

                ),
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              initialCalendarFormat: CalendarFormat.week,
                calendarStyle: CalendarStyle(
                  todayColor: Colors.grey,
                  selectedColor: Colors.grey.shade900,
                  todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0,
                    color: Colors.white,
                  ),
                ),
                calendarController: _controller
            ),
          ],
        ),
      ),
    );
  }
}
