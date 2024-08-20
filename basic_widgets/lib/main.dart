import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'My App', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<HomeScreen> {
  final TextEditingController f1 = TextEditingController();
  final TextEditingController f2 = TextEditingController();
  String first_name = "";
  String last_name = "";
  String f = "";
  String l = "";

  void _dataEntry(){
    setState(() {
    first_name = f1.text;
    last_name = f2.text;
    });
  }

  void _showFirst(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("First Name"),
          content: Text(f),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
  void _showLast(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Last Name"),
          content: Text(l),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Happy Happy",
              style: TextStyle(
                fontSize: 32,
                color: Colors.amber,
                backgroundColor: Colors.black,
                wordSpacing: 8,
                letterSpacing: 8,
                fontWeight: FontWeight.bold,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          backgroundColor: Colors.grey,
          elevation: 16,
          actionsIconTheme: IconThemeData(),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           const  SizedBox(
              height: 20,
            ),
            TextField(
              controller: f1,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter first name'),
            ),
           const  SizedBox(
              height: 20,
            ),
            TextField(
              controller: f2,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter Last name'),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(onPressed: _dataEntry,child: const  Icon(Icons.check),),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed:() => _showFirst(context), child: const Text("View First Name")),
            ElevatedButton(onPressed:() =>_showLast(context), child: const Text("View Last  Name")),
            //Text(f),
           // Text(l)
          ],
        )),
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
