import 'package:flutter/material.dart';

class RemoveTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remove Task'),
      ),
      body: Center(
        child: Text('This is where you remove tasks.'),
      ),
    );
  }
}
