import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task.dart';
import 'package:todoapp/widgets/task_list.dart';
import 'package:todoapp/screens/add_task_screen.dart';
import 'package:todoapp/models/dynamic_task.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80.0, left: 15.0, right: 15.0, bottom: 30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          'Tasks',
                           style: TextStyle(
                             fontSize: 47.0,
                             fontWeight: FontWeight.w300,
                           ),
                      ),
                      Icon(
                          Icons.notifications_none,
                          size: 30.0,
                      ),

                    ],
                  ),
                  SizedBox(height: 35.0,),


                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(

                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                        color: Color.fromRGBO(212, 212, 212, 0.2),
                        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 50.0),
                        child: TaskList(),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(),

                );
          },
          backgroundColor: Colors.white,
          child: Icon(Icons.add),
          foregroundColor: Color(0xffFE4775),
          mini: true,
        ),
    );
  }
}


