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
      body: Row(
        children: [
          Column(
            children: [

              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text('row 1 column 1'),
              ),
              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text('row 1 column 2'),
              ),
              Container(
                padding: EdgeInsets.all(32.0),
                margin: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text('Container 1'),
              ),


            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text('row 2 column 1'),
              ),

              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text('row 2 column 2'),
              ),
              Container(
                padding: EdgeInsets.all(32.0),
                margin: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text('Container 1'),
              ),


            ],
          ),
        ],

      ),

    );
  }
}
