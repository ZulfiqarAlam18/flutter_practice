import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 // double scale = 1.0;
  Offset offset = const Offset(0.0,0.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              const snackBar = SnackBar(
                content: Text('Yay! A SnackBar!'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            onDoubleTap: (){
              const snackBar = SnackBar(
                content: Text('Double clicked!'),
              );


              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            // onScaleUpdate: (details){
            //   setState(() {
            //     scale = details.scale;
            //
            //   });
            // },
              onPanUpdate: (details){
              setState(() {
                offset = Offset(offset.dx + details.delta.dx, offset.dy+details.delta.dy);
              });
          },

            onLongPress: (){
              const snackBar = SnackBar(
                content: Text('Long pressed'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);


            },
            child: Transform.translate(
              offset: offset,
              child: Container(
                height: 100,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  //borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Center(
                  child: Text("I am container"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//ink well vs gesture detector