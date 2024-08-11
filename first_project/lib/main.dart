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
          child: Text("My First App"),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Press Any Button"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showName,
              child: Text(name),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _showRollNo,
              child: Text(rollNo),
            ),
          ],
        ),
      ),
    );
  }
}
