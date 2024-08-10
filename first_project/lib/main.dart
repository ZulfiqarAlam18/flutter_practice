import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My first App',
      home: Scaffold(
        appBar: AppBar(
          title: const  Center(
            child:  Text('Welcome Back'),
          ),
          backgroundColor: Colors.grey,
        ),
        body: const Center(
          child: Text('Zulfiqar Alam\n Hello world')

        ),

      )
    );
  }


  }



