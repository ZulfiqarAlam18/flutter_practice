import 'package:flutter/material.dart';

class ViewTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View All Tasks'),
      ),
      body: Center(
        child: Text('This is where you view all tasks.'),
      ),
    );
  }
}
