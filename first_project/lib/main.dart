import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<Screen> {
  String name = "Zulfiqar Alam";
  String rollNo = "21sw018";

  void _showName() {
    setState(() {
      name = "Zulfiqar"; // Update the name when button is pressed
    });
  }

  void _showRollNo() {
    setState(() {
      rollNo = "21sw018"; // Update the roll number when button is pressed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "My First App",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Press Any Button",
              style: TextStyle(color: Colors.grey, fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showName,
              child: Text(name,style: TextStyle(color: Colors.green,fontSize: 16),),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _showRollNo,
              child: Text(rollNo, style: TextStyle(color: Colors.amber,fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
