import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:timetable_2_flutter_admin/widgets/myListTile.dart';

class PushRequest extends StatefulWidget {
  @override
  _PushRequestState createState() => _PushRequestState();
}

class _PushRequestState extends State<PushRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView.separated(
          itemCount: testData.length + 2,
          separatorBuilder: (context, _) => SizedBox(
            height: 10,
          ),
          itemBuilder: (context, index) {
            if (index == 0 || index == (testData.length + 1)) {
              return Container();
            }
            Map<String, String> item = testData[index - 1];
            return MyListTile(
                title: item['title'],
                type: item['type'],
                duration: item['day'],
                time: item['time'],
                email: item['email'],
                status: item['status']);
          },
        ),
      ),
    );
  }
}

List<Map<String, String>> testData = [
  {
    "title": "CS 101",
    "type": "Theory",
    "time": "8 am",
    "day": "Tuesday",
    "email": "gandhi18@iitg.ac.in",
    "status": "cancel"
  },
  {
    "title": "CS 223",
    "type": "Theory",
    "time": "9 am",
    "day": "Thursday",
    "email": "gandhi18@iitg.ac.in",
    "status": "cancel"
  },
  {
    "title": "CS 110",
    "type": "Assignment",
    "time": "12 am",
    "day": "Monday",
    "email": "gandhi18@iitg.ac.in",
    "status": "update"
  },
  {
    "title": "CS 245",
    "type": "Quiz",
    "time": "11 am",
    "day": "Friday",
    "email": "gandhi18@iitg.ac.in",
    "status": "update"
  },
  {
    "title": "HSS 123",
    "type": "Quiz",
    "time": "2 pm",
    "day": "3 hour",
    "email": "gandhi18@iitg.ac.in",
    "status": "add"
  },
];
