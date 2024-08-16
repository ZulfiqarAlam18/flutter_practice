import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Updated Calculator',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<Home> {
  final TextEditingController obj1 = TextEditingController();
  final TextEditingController obj2 = TextEditingController();
  final TextEditingController obj3 = TextEditingController();
  String result = "No Result";

  void showResult() {
    setState(() {
      int? n1 = int.tryParse(obj1.text);
      int? n2 = int.tryParse(obj2.text);
      String op = obj3.text;

      if (n1 == null || n2 == null || op.isEmpty) {
        result = "Invalid Input";
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
            result = (n1 / n2).toStringAsFixed(2); // limit to 2 decimal places
          }
          break;
        default:
          result = "Invalid Operator";
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(result),
        duration: const Duration(seconds: 5),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Updated Calculator App',
          style: TextStyle(),
        )),
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: obj1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter 1st Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: obj3,
                decoration: const InputDecoration(
                  labelText: 'Enter Operator (+, -, *, /)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: obj2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter 2nd Number',
                  border: OutlineInputBorder(),
                  

                ),
              ),
            ),
            ElevatedButton(
              onPressed: showResult,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
              ),
              child: const Text(
                'Press to See Result',
                style: TextStyle(fontSize: 20,color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
