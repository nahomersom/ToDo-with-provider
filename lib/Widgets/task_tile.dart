import 'package:flutter/material.dart';
//below code describe how we use call back
// class TaskTile extends StatefulWidget {
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text('buy milk',style: TextStyle(
//         decoration: isChecked ? TextDecoration.lineThrough : null
//       ),),
//       trailing: TaskCheckBox(
//         checkBoxState:isChecked,
//         toogleCheckBox: (bool?
//         checkboxState){
//           setState(() {
//             isChecked = checkboxState!;
//           });
//
//         },
//       )
//     );
//   }
// }
//
// class TaskCheckBox extends StatelessWidget{
//    bool? checkBoxState = false;
//    void Function(bool?)? toogleCheckBox;
//   TaskCheckBox({this.checkBoxState,this.toogleCheckBox});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       onChanged: toogleCheckBox,
//       value: checkBoxState,
//       activeColor: Colors.lightBlueAccent,
//     );
//   }
// }
class TaskTile extends StatelessWidget{
 bool? isChecked = false;
 String? taskTitle;
 void Function(bool?)? toggleCheckBox;
 void Function() longPressCallBack;
 TaskTile({required this.isChecked,required this.taskTitle,required this.toggleCheckBox,required this.longPressCallBack});
  Widget build(BuildContext context){
    return ListTile(
      onLongPress: longPressCallBack,
     title: Text(taskTitle!,style:
     TextStyle(
     decoration: isChecked! ? TextDecoration.lineThrough : null
     ),),
    trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBox,
      value: isChecked,
    ),
    );
  }
}





