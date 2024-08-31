import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyWidgets());
}

class MyWidgets extends StatelessWidget{
  const MyWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Widgets',
      home: Text('Simple Widgets'),
    );
  }
}