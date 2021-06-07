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
          appBar: appBar(

          ),

          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),

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