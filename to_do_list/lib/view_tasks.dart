
import 'package:flutter/material.dart';

class ViewTasksScreen extends StatefulWidget{
  const ViewTasksScreen({super.key});
  ViewTasksScreenState createState() => ViewTasksScreenState();
}

class ViewTasksScreenState extends State<ViewTasksScreen>{
  final List <String> tasks = const ["Task1","Task2","Task3","Task4","Task5","Task6"];
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Tasks'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.teal,
      body: ListView.builder(itemCount:tasks.length,itemBuilder: (context,index){
        return ListTile(
          title: Text(tasks[index]),
        );
      }),

    );

  }


}