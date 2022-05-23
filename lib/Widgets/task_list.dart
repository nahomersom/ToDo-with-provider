import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Widgets/task_tile.dart';
import 'package:todo/models/task_data.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context,index){
            final task = taskData.tasks[index];
            return TaskTile(

                isChecked: task.isDone,
                
                taskTitle: task.name,
                toggleCheckBox: (checkBoxState){
                 taskData.updateTask(task);
                },
                longPressCallBack: (){
                  taskData.deleteTask(task);
            }


            );
          },
          itemCount: taskData.taskCount,
        );
      }

    );
  }
}
