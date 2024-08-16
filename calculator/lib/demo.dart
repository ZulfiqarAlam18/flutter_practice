import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<Home> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  String result = "";

  void _result() {
    setState(() {
      int? n1 = int.tryParse(_controller1.text);
      int? n2 = int.tryParse(_controller2.text);
      String op = _controller3.text;

      if (n1 == null || n2 == null || op.isEmpty) {
        result = "Invalid input";
        return;
      }

      switch (op) {
        case "+":
          result = (n1 + n2).toString();
          break;
        case "-":
          result = (n1 - n2).toString();
          break;
        case "*":
          result = (n1 * n2).toString();
          break;
        case "/":
          if (n2 == 0) {
            result = "Cannot divide by zero";
          } else {
            result = (n1 / n2).toStringAsFixed(2); // limiting to 2 decimal places
          }
          break;
        default:
          result = "Invalid operator";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Calculator'),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter First Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller3,
                decoration: const InputDecoration(
                  labelText: 'Enter Operator (+, -, *, /)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Second Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _result,
              child: const Text("Press To See Result"),
            ),
            const SizedBox(height: 20), // Adding some space before the result
            Text(
              result,
              style: const TextStyle(fontSize: 24), // Making the result text larger
            ),
          ],
        ),
      ),
    );
  }
}
