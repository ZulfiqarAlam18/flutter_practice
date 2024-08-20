import 'package:flutter/material.dart';
import 'package:to_do_list/add_task.dart';
import 'package:to_do_list/remote_task.dart';
import 'package:to_do_list/view_tasks.dart';

void main(){
  runApp(const ToDo());
}
class ToDo extends StatelessWidget{
  const ToDo({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'ToDo',
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget{
  const MainMenu({super.key});
  @override
  AppState createState() => AppState();
}

class AppState extends State <MainMenu>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTaskScreen()));
            }, child: const Text("Add Task"),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RemoveTaskScreen()));
            }, child: const Text("Remove Task"),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTasksScreen()));
            }, child: const Text("View Tasks List"),)
          ],
        ),
      ),
    );
  }
}

