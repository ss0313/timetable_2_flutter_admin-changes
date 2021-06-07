import 'package:flutter/material.dart';

class MyDepartment extends StatefulWidget {
  @override
  _MyDepartmentState createState() => _MyDepartmentState();
}

class _MyDepartmentState extends State<MyDepartment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
        ),
      ),
    );
  }
}
