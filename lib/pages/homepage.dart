import 'package:flutter/material.dart';
import 'package:timetable_2_flutter_admin/widgets/appBar.dart';
import './push_req.dart' as first;
import './my_department.dart' as second;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
      length: 2,
        child: Scaffold(
          appBar: appBar(),
         bottomNavigationBar: new Material(
                color: Colors.pink,
         ),
            body: new TabBarView(
                children: <Widget>[
                  new first.PushRequest(),
                  new second.MyDepartment(),
                ]
            )
        ),
      ),
    );

  }
}