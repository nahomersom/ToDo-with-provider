import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/Widgets/task_list.dart';
import 'package:todo/models/task.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTextScreen());
        },
        child: Icon(Icons.add),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          padding: EdgeInsets.only(left:30.0,top:60.0,right:30.0,bottom:30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                      color:Colors.lightBlueAccent
                  ),
              radius:30.0,
              backgroundColor: Colors.white,
              ),
              SizedBox(height: 10.0),
              Text('ToDo',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),
              ),
              Text('${Provider.of<TaskData>(context).taskCount} tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0
              ),
              ),

            ],
          )
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)
                  )
              ),
              // child: TaskList(tasks),
              child: TaskList(),
            ),
          )
    ]
    )
    );
  }
}



