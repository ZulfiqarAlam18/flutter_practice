import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidgets());
}

class MyWidgets extends StatelessWidget {
  const MyWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Widgets',
      home: Practice(),
    );
  }
}

class Practice extends StatefulWidget {
  const Practice({super.key});
  @override
  MyPracticeApp createState() => MyPracticeApp();
}

class MyPracticeApp extends State<Practice> {

  // Var , Const and final key words
  var name = "Zulfiqar";
  final caste = "Jamali";
  static const age = "18";

  // Data types in flutter/dart
  final int a = 10;
  final String b = 'c';
  final double c = 2.4;
  final bool value = true;
  final List <String> data = ["fakhar","sajjad","Zulfiqar"];
  final Map <String, String> data1 = {
    "name":"fakhar",
    "caste":"Laghari",
    "Roll No":"21sw013"
  };

  // Switch Statement
  void day_name(day){
    switch (day){
      case 1:
        name = 'Mon';
        break;
      case 2:
        name = 'Tues';
        break;
      case 3:
        name = 'Wed';
        break;
      case 4:
        name = 'Thrus';
        break;
      case 5:
        name = 'Fri';
        break;
      case 6:
        name = 'Sat';
        break;
      case 7:
        name = 'Sun';
        break;
      default:
        name = 'Invalid Response';
    }
  }

  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Practice'),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(b),

          ],
        ),
      ),
    );
  }
}
