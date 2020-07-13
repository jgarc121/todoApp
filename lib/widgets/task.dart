import 'package:flutter/material.dart';

class Task extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;

  Task({this.isChecked, this.taskTitle, this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        child: Text(
          taskTitle,
          style: TextStyle(
            //isChecked ? TextDecoration.lineThrough : null,
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Color(0xffFE4775),
            fontSize: 21.0,
          ),
        ),
        onTap: checkboxCallBack,
        //onTap, checkboxCallBack,
      ),
    );
  }

//  _onTap() {
//    setState(() => isChecked = !isChecked);
//  }
}