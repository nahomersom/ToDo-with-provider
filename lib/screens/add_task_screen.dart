import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Widgets/task_list.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';
class AddTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? taskValue;
    return Container(
     color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22.0),
            topRight: Radius.circular(22.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0

            ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                taskValue = value;
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
                onPressed:(){
                 Provider.of<TaskData>(context,listen: false).addTask(taskValue!);
                 Navigator.pop(context);
                },
                child: Text(
                  'Add',
                 style: TextStyle(
                   color: Colors.white
                 ),
                )
            )
          ],
        ),
      ),
    );
  }
}
