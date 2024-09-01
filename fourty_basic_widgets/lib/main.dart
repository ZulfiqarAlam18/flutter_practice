import 'package:flutter/material.dart';

void main() {
  runApp(const BasicWidgets());
}

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Widgets',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
             padding: EdgeInsets.all(24.0),
              margin: EdgeInsets.all(24.0),
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0,3),
                  )
                ]
              ),
              child: Center(child: Text('Container',style: TextStyle(fontSize: 24,color: Colors.white),)),
            ),
        Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(30.0),
          margin: EdgeInsets.all(50.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Text(
            'Hello, Container!',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),







    ],
        ),
      ),
    );
  }
}
