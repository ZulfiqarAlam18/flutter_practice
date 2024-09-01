import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidgets());
}

class MyWidgets extends StatelessWidget {
  const MyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text('Widgets'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],

        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text widget
            Text('Text Widget'),
            //Icon Widget
            Icon(
              Icons.person,
              color: Colors.blue,
            ),
            //image widget
            //Image.network("url")

            //container widget
            Container(
              padding: EdgeInsets.all(24.0),
              margin: EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: const Text('Yes I am a container'),
            ),


            // Stack(
            //   children: <Widget> [
            //     Container(width: 100,height: 100,color: Colors.red,child: Text('container inside stack'),),
            //     //Container(width: 200,height: 300,color: Colors.blue,),
            //     //Container(width: 200,height: 400,color: Colors.teal,)
            //   ]
            // ),


            // ListView(
            //   children: [
            //     ListTile(title: Text('item 1'),),
            //     ListTile(title: Text('item 2'),),
            //     ListTile(title: Text('item 3'),),
            //   ],
            // ),

            //here we go with button
            // ElevatedButton(onPressed: (){}, child: Text('Elevated button')),
            // FloatingActionButton(onPressed: (){},child: Icon(Icons.ac_unit)),
            // IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)),
            // TextButton(onPressed: (){}, child: Text('Text Button')),

           //code for snake bar
          //  ScaffoldMessenger.of(context).showSnackBar(
          // SnackBar(content: Text('This is a SnackBar')),
          //  )

        TextField(
          decoration: InputDecoration(
            labelText: 'Enter your nameee',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        //SizedBox(20.2),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: 'Enter your roll number',
        //     border: OutlineInputBorder(),
        //   ),
        // ),

        //   Card(
        //     child: ListTile(
        //       title: Text('Card Title'),
        //       subtitle: Text('Card Subtitle'),
        //     ),
        //   ),
        //   Checkbox(
        //     value: true,
        //     onChanged: (bool? value) {},
        //   ),
        // Radio<int>(
        //   value: 1,
        //   groupValue: 0,
        //   onChanged: (int? value) {},
        // ),

        //
        //   BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
        //     BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        //   //  BottomNavigationBarItem(icon: Icon(Icons.contact_mail,),label: 'Contact'),
        // //   ],
        // // )
        // Switch(
        //   value: true,
        //   onChanged: (bool value) {},
        // ),
        // Slider(
        //   value: 75,
        //   min: 0,
        //   max: 100,
        //   onChanged: (double value) {},
        // ),
        // CircularProgressIndicator(),
        // GestureDetector(
        //   onTap: () {
        //     print('Tapped!');
        //   },
        //   child: Container(
        //     color: Colors.teal,
        //     padding: EdgeInsets.all(16),
        //     child: Text('Tap Me'),
        //   ),
        // ),

        Form(
          child: Column(
            children: <Widget>[
              TextFormField(decoration: InputDecoration(labelText: 'Name',border: OutlineInputBorder())),
              SizedBox(height: 20),
              TextFormField(decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder())),
            ],
          ),
        ),



        ],
        ),
      ),
    );
  }
}
