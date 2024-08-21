import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget{
  const AddTaskScreen({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<AddTaskScreen>{
  final TextEditingController controller  = TextEditingController();
  String task = "";

  void addTask(){
    task = controller.text;
    if(task.isNotEmpty){
     // print('Task added');
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Add Your Tasks Here'),

        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(16.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Task Description'
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: addTask, child: const Text('Add Task')),
            Text(task),
          ],
        ),
      ),
    );
  }
}
