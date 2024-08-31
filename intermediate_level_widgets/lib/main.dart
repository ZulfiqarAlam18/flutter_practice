import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  MyAppState createState() => MyAppState();
}

class MyAppState extends State <Home> {

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Practice'),

          ),
          backgroundColor: Colors.teal,
        ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: const Text('Container 1',style: TextStyle(fontSize: 24,color: Colors.black),),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: const Text('Container 2',style: TextStyle(fontSize: 24,color: Colors.black),),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: const Text('Container 3',style: TextStyle(fontSize: 24,color: Colors.black),),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: const Text('Container 4',style: TextStyle(fontSize: 24,color: Colors.black),),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: const Text('Container 5',style: TextStyle(fontSize: 24,color: Colors.black),),
          ),



        ],

      ),
    );
  }
}

// Container(
// padding: EdgeInsets.all(16.0),
// margin: EdgeInsets.all(16.0),
// decoration: BoxDecoration(
// color: Colors.blue,
// borderRadius: BorderRadius.circular(8.0),
// ),
// child: Text('This is a Container'),
// );
