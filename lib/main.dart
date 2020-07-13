import 'package:flutter/material.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/screens/tasks_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
        theme: ThemeData(fontFamily: 'Avenir LTStd-Book'),
      ),
    );
  }
}
