import 'package:flutter/material.dart';
import 'package:todoapp/models/dynamic_task.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      //height: 250.0,
      color: Color(0xff737373),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Text(
                'Add new',
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: TextField(
              onChanged: (newText) {
                  newTaskTitle = newText;
              },
              cursorColor: Color(0xffFE4775),
              decoration: InputDecoration(
                hintText: 'Enter Task',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffFE4775)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffFE4775)),
                ),
              ),
            ),
          ),
          SizedBox(height: 35.0),

        SizedBox(height: 25.0),
        Align(
          alignment: Alignment.bottomCenter,
          child: RaisedButton(
            onPressed: () {
              if (newTaskTitle == null){
                newTaskTitle = 'null';
              }
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: const Text('Add', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
            textColor: Colors.white,
            elevation: 5,
          ),
        ),

        ],
      ),
      ),
    );
  }
}


//#737373
//#6f6f6f